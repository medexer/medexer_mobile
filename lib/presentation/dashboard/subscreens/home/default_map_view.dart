import 'dart:async';
import 'dart:ui' as ui;
import 'dart:developer';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medexer/components/buttons/custom_button.dart';
import 'package:medexer/components/images/cached_network_image_widget.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/data/infra_sdk/donor/lib/donor_sdk.dart';

class DefaultMapView extends StatefulWidget {
  const DefaultMapView({super.key});

  @override
  State<DefaultMapView> createState() => _DefaultMapViewState();
}

class _DefaultMapViewState extends State<DefaultMapView> {
  CancelableOperation? _initOperation;
  bool _isDisposed = false;
  bool _isLiteModeEnabled = true;

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
  GoogleMapController? googleMapController;

  CustomInfoWindowController? customInfoWindowController;

  RxBool isLocationPermissionActive = false.obs;
  LatLng latLng = const LatLng(9.922084666154559, 8.890605481537557);
  final Completer<GoogleMapController> _controller = Completer();

  Future<void> safeSetState(VoidCallback fn) async {
    if (!_isDisposed && mounted) {
      setState(fn);
    }
  }

  void initializeMapFunctions() async {
    await Future.delayed(const Duration(milliseconds: 2500));

    if (_isDisposed || !mounted) return;

    if (ServiceRegistry.userRepository.donationCenters.isEmpty) {
      await ServiceRegistry.donorService.fetchDonationCentersService();
    }

    _initOperation = CancelableOperation.fromFuture(
      _initializeMap(),
      onCancel: () {
        log('[MAP-INITIALIZATION-CANCELLED]');
      },
    );
  }

  Future<void> _initializeMap() async {
    if (_isDisposed || !mounted) return;

    try {
      // await Future.delayed(const Duration(milliseconds: 800));

      if (_isDisposed || !mounted) return;
      await initializeDonationCenters();

      if (_isDisposed || !mounted) return;
      await initializeCurrentLocation();

      if (_isDisposed || !mounted) return;
      await onMapCreated();
    } catch (e) {
      log('[ERROR-INITIALIZE-MAP] :: ${e.toString()}');
    }
  }

  Future<void> initializeCurrentLocation() async {
    try {
      if (mounted) {
        LocationPermission locationPermission =
            await Geolocator.checkPermission();

        log('[LOCATION-PERMISSION] :: $locationPermission');

        if (locationPermission == LocationPermission.denied ||
            locationPermission == LocationPermission.deniedForever ||
            locationPermission == LocationPermission.unableToDetermine) {
          isLocationPermissionActive.value = false;

          log('[LOCATION-PERMISSION] :: $locationPermission');
        } else {
          log('[LOCATION-PERMISSION] :: $locationPermission');

          isLocationPermissionActive.value = true;

          currentLocation = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
          );

          setState(() {
            latLng =
                LatLng(currentLocation.latitude, currentLocation.longitude);
          });

          log('[CURRENT-LOCATION] :: $currentLocation');

          // googleMapController = await _controller.future;

          googleMapController?.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                zoom: 11.5,
                target: latLng,
              ),
            ),
          );
        }
      }
    } catch (e) {
      isLocationPermissionActive.value = false;

      log('[ERROR-INITIALIZE-CURRENT-LOCATION] :: ${e.toString()}');
    } finally {
      isLocationPermissionActive.value = false;
    }
  }

  Future<void> onMapCreated() async {
    try {
      final Uint8List myMarkerIcon = await getBytesFromAsset(
          path: 'assets/icons/icon_marker.png', width: 60);

      log('[LOCATION-PERMISSION-1] :: $isLocationPermissionActive');

      if (isLocationPermissionActive.isTrue) {
        log('[LOCATION-PERMISSION-2] :: $isLocationPermissionActive');

        if (_isDisposed || !mounted) return;
        await safeSetState(() {
          markers.add(Marker(
            icon: BitmapDescriptor.fromBytes(myMarkerIcon),
            markerId: MarkerId(
              ServiceRegistry.userRepository.accountInfo.value.id,
            ),
            position: latLng,
          ));
        });

        googleMapController?.animateCamera(
          CameraUpdate.newLatLng(latLng),
        );
      }
    } catch (e) {
      log('[ERROR-ON-MAP-CREATED] :: ${e.toString()}');
    }
  }

  Future<void> initializeDonationCenters() async {
    await Future.delayed(const Duration(milliseconds: 800));

    if (_isDisposed || !mounted) return;

    log('[INITIALIZE-DONATION-CENTERS-PROCESSING]');

    try {
      final Uint8List markerIcon = await getBytesFromAsset(
          path: 'assets/icons/icon_marker_2.png', width: 80);

      final Set<Marker> newMarkers = {};

      for (final donationCenter
          in ServiceRegistry.userRepository.donationCenters) {
        if (_isDisposed || !mounted) return;

        if (donationCenter.latitude != null &&
            donationCenter.longitude != null &&
            donationCenter.latitude!.isNotEmpty &&
            donationCenter.longitude!.isNotEmpty) {
          try {
            final lat = double.parse(donationCenter.latitude!);
            final lng = double.parse(donationCenter.longitude!);

            newMarkers.add(
              Marker(
                icon: BitmapDescriptor.fromBytes(markerIcon),
                markerId: MarkerId(donationCenter.id!),
                position: LatLng(lat, lng),
                onTap: () {
                  customInfoWindowController!.addInfoWindow!(
                    Container(
                      height: 200,
                      width: 200,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                imageUrl: donationCenter.coverPhoto!,
                                errorAssetImage: 'assets/images/default.jpg',
                              ),
                            ),
                          ),
                          TitleText(
                            size: 14,
                            maxLines: 2,
                            title: donationCenter.name!,
                          ),
                          CustomButton(
                            text: 'View profile',
                            width: double.maxFinite,
                            height: 48,
                            fontSize: 14,
                            borderRadius: 16,
                            onTapHandler: () {
                              ServiceRegistry.userRepository.donationCenterInfo
                                  .value = donationCenter;

                              Get.toNamed(AppRoutes.donationCenterProfileRoute);
                            },
                            fontWeight: FontWeight.w600,
                            fontColor: AppColors.whiteColor,
                            backgroundColor: AppColors.dangerColor,
                          ),
                        ],
                      ),
                    ),
                    LatLng(lat, lng),
                  );
                },
              ),
            );
          } catch (e) {
            log('[COORDINATE-PARSE-ERROR] :: ${e.toString()}');
          }
        }
      }
      if (_isDisposed || !mounted) return;
      await safeSetState(() {
        markers.addAll(newMarkers);
      });
    } catch (e) {
      log('[ERROR-INITIALIZE-DONATION-CENTERS] :: ${e.toString()}');
    }

    log('[INITIALIZE-DONATION-CENTERS-SUCCESS]');
  }

  @override
  void initState() {
    super.initState();
    _isDisposed = false;
    customInfoWindowController = CustomInfoWindowController();
    initializeMapFunctions();
  }

  @override
  void dispose() {
    _isDisposed = true;
    _initOperation?.cancel();
    customInfoWindowController?.dispose();
    googleMapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: GoogleMap(
              gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                Factory<OneSequenceGestureRecognizer>(
                  () => EagerGestureRecognizer(),
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
                googleMapController = controller;
                customInfoWindowController!.googleMapController = controller;
              },
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  currentLocation.latitude,
                  currentLocation.longitude,
                ),
                zoom: 11.5,
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
            height: 200,
            width: 200,
            offset: 35,
          ),
        ],
      ),
    );
  }
}
