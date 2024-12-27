import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medexer/components/buttons/custom_button.dart';
import 'package:medexer/components/images/cached_network_image_widget.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class DonationCenterMapScreen extends StatefulWidget {
  const DonationCenterMapScreen({super.key});

  @override
  State<DonationCenterMapScreen> createState() =>
      _DonationCenterMapScreenState();
}

class _DonationCenterMapScreenState extends State<DonationCenterMapScreen> {
  final Set<Marker> markers = {};
  Position currentLocation = Position(
    latitude: 9.922084666154559,
    longitude: 8.890605481537557,
    timestamp: DateTime.now(),
    accuracy: 0,
    altitude: 0,
    heading: 0,
    altitudeAccuracy: 0,
    headingAccuracy: 0,
    speed: 0,
    speedAccuracy: 0,
  );

  List<LatLng> polylineCoordinates = [];
  GoogleMapController? googleMapController;

  CustomInfoWindowController? customInfoWindowController;

  StreamSubscription<Position>? positionStream;
  RxBool isLocationPermissionActive = false.obs;
  final Completer<GoogleMapController> _controller = Completer();
  LatLng latLng = const LatLng(9.922084666154559, 8.890605481537557);

  void initializeMapFunctions() async {
    await Future.delayed(const Duration(milliseconds: 800));

    await initializeCurrentLocation();

    await initializeRoutePolyPoints();

    await onMapCreated();

    setState(() {});

    // startLocationUpdates();
  }

  Future<void> initializeCurrentLocation() async {
    if (mounted) {
      LocationPermission locationPermission =
          await Geolocator.checkPermission();

      log('[LOCATION-PERMISSION] :: $locationPermission');

      if (locationPermission == LocationPermission.denied ||
          locationPermission == LocationPermission.deniedForever ||
          locationPermission == LocationPermission.unableToDetermine) {
        isLocationPermissionActive.value = false;
      } else {
        log('[LOCATION-PERMISSION] :: $locationPermission');

        isLocationPermissionActive.value = true;

        currentLocation = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );

        setState(() {
          latLng = LatLng(currentLocation.latitude, currentLocation.longitude);
        });

        log('[CURRENT-LOCATION] :: $currentLocation');

        googleMapController = await _controller.future;

        googleMapController?.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              zoom: 14.5,
              target: latLng,
            ),
          ),
        );
      }
    }
  }

  Future<void> initializeRoutePolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      request: PolylineRequest(
        origin: PointLatLng(latLng.latitude, latLng.longitude),
        destination: PointLatLng(
          double.parse(ServiceRegistry
              .commonRepository.donationCenterInfo.value.latitude!),
          double.parse(ServiceRegistry
              .commonRepository.donationCenterInfo.value.longitude!),
        ),
        mode: TravelMode.driving,
      ),
      googleApiKey: dotenv.env['GOOGLE_MAP_API_KEY']!,
    );

    if (result.points.isNotEmpty) {
      setState(() {
        for (var point in result.points) {
          polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        }
      });
      log('[ROUTE] :: $polylineCoordinates');
    }
  }

  Future onMapCreated() async {
    if (mounted) {
      final Uint8List myMarkerIcon = await getBytesFromAsset(
          path: 'assets/icons/icon_marker.png', width: 60);

      final Uint8List markerIcon = await getBytesFromAsset(
          path: 'assets/icons/icon_marker_2.png', width: 80);

      googleMapController = await _controller.future;

      setState(() {
        markers.add(Marker(
          icon: BitmapDescriptor.fromBytes(myMarkerIcon),
          markerId: MarkerId(
            ServiceRegistry.userRepository.accountInfo.value.id,
          ),
          position: latLng,
        ));

        markers.add(
          Marker(
            icon: BitmapDescriptor.fromBytes(markerIcon),
            markerId: MarkerId(ServiceRegistry
                .commonRepository.donationCenterInfo.value.name!),
            position: LatLng(
                double.parse(ServiceRegistry
                    .commonRepository.donationCenterInfo.value.latitude!),
                double.parse(ServiceRegistry
                    .commonRepository.donationCenterInfo.value.longitude!)),
            onTap: () {
              customInfoWindowController!.addInfoWindow!(
                Container(
                  height: 160,
                  width: 200,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          child: CachedNetworkImageWidget(
                            width: double.maxFinite,
                            height: double.maxFinite,
                            imageUrl: ServiceRegistry.userRepository
                                .donationCenterInfo.value.coverPhoto!,
                            errorAssetImage: 'assets/images/default.jpg',
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSizes.vertical_5),
                      TitleText(
                        size: 14,
                        maxLines: 2,
                        title: ServiceRegistry
                            .commonRepository.donationCenterInfo.value.name!,
                      ),
                    ],
                  ),
                ),
                LatLng(
                  double.parse(ServiceRegistry
                      .commonRepository.donationCenterInfo.value.latitude!),
                  double.parse(ServiceRegistry
                      .commonRepository.donationCenterInfo.value.longitude!),
                ),
              );
            },
          ),
        );
      });

      googleMapController?.animateCamera(
        CameraUpdate.newLatLng(latLng),
      );
    }
  }

  void startLocationUpdates() async {
    final Uint8List myMarkerIcon = await getBytesFromAsset(
        path: 'assets/icons/icon_marker.png', width: 60);

    positionStream = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10, // Update every 10 meters
      ),
    ).listen((Position position) async {
      setState(() {
        currentLocation = position;
        latLng = LatLng(position.latitude, position.longitude);

        // Update the user's marker position
        markers.removeWhere((marker) =>
            marker.markerId.value ==
            ServiceRegistry.userRepository.accountInfo.value.id);
        markers.add(Marker(
          icon: BitmapDescriptor.fromBytes(myMarkerIcon),
          markerId: MarkerId(
            ServiceRegistry.userRepository.accountInfo.value.id,
          ),
          position: latLng,
        ));
      });

      // Recalculate route
      await initializeRoutePolyPoints();
    });
  }

  @override
  void initState() {
    customInfoWindowController = CustomInfoWindowController();

    initializeMapFunctions();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Stack(
          children: [
            SizedBox.expand(
              child: GoogleMap(
                gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                  Factory<OneSequenceGestureRecognizer>(
                    () => EagerGestureRecognizer(),
                  ),
                },
                polylines: {
                  Polyline(
                    width: 4,
                    points: polylineCoordinates,
                    color: AppColors.primaryColor,
                    polylineId: PolylineId(
                      ServiceRegistry
                          .commonRepository.donationCenterInfo.value.name!,
                    ),
                  ),
                },
                scrollGesturesEnabled: true,
                compassEnabled: true,
                myLocationEnabled: true,
                zoomControlsEnabled: false,
                myLocationButtonEnabled: false,
                mapToolbarEnabled: false,
                mapType: MapType.normal,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                  // googleMapController = controller;
                  customInfoWindowController!.googleMapController = controller;
                },
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                    currentLocation.latitude,
                    currentLocation.longitude,
                  ),
                  zoom: 12.5,
                ),
                markers: markers,
                onTap: (position) {
                  customInfoWindowController!.hideInfoWindow!();
                },
                onCameraMove: (position) {
                  customInfoWindowController!.onCameraMove!();
                },
              ),
            ),
            CustomInfoWindow(
              controller: customInfoWindowController!,
              height: 160,
              width: 200,
              offset: 35,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(
          top: AppSizes.vertical_10,
          bottom:
              Platform.isAndroid ? AppSizes.vertical_10 : AppSizes.vertical_25,
          left: AppSizes.horizontal_15,
          right: AppSizes.horizontal_15,
        ),
        color: AppColors.whiteColor,
        child: CustomButton(
          text: 'Back',
          width: double.maxFinite,
          height: 56,
          onTapHandler: () {
            Get.back();
          },
          fontSize: 16,
          borderRadius: 16,
          fontWeight: FontWeight.w500,
          fontColor: AppColors.whiteColor,
          backgroundColor: AppColors.blackColor,
        ),
      ),
    );
  }
}
