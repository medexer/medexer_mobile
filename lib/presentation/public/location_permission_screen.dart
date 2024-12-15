import 'dart:io';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/components/buttons/custom_button.dart';

class LocationPermissionScreen extends StatefulWidget {
  const LocationPermissionScreen({super.key});

  @override
  State<LocationPermissionScreen> createState() =>
      _UserLocationPermissionScreenState();
}

class _UserLocationPermissionScreenState
    extends State<LocationPermissionScreen> {
  @override
  void initState() {
    super.initState();

    // initializeUserLocationPermission();
  }

  Future<void> initializeUserLocationPermission() async {
    // await Future.delayed(const Duration(seconds: 4));

    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator
          .requestPermission(); // This will open the device's location settings.
      log('Location services are disabled. Please enable them.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        // Permissions are denied, request permission again with a rationale.
        await Geolocator.requestPermission();

        if (permission == LocationPermission.denied) {
          // Permissions are still denied, handle accordingly.

          log('Location permissions are denied');

          Get.toNamed(AppRoutes.loginRoute);
        } else {
          log('Location permissions are enabled');

          Get.toNamed(AppRoutes.loginRoute);
        }
      }
    }

    if (permission == LocationPermission.deniedForever) {
      log(
        'Location permissions are permanently denied. We cannot request permissions. Please go to your app settings and enable location permissions.',
      );

      Get.toNamed(AppRoutes.loginRoute);
    }

    if (permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse) {
      // Position position = await Geolocator.getCurrentPosition();

      // log('[POSITION-LATITUDE] :: ${position.latitude}');
      // log('[POSITION-LONGITUDE] :: ${position.longitude}');

      Get.toNamed(AppRoutes.loginRoute);
    } else {
      Get.toNamed(AppRoutes.loginRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Container(
          width: AppSizes.screenWidth(context),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.horizontal_15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/image_location_map.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const TitleText(
                size: 20,
                title: 'Share your location',
              ),
              const SizedBox(height: AppSizes.vertical_5),
              SubtitleText(
                maxLines: 100,
                lineHeight: 1.8,
                alignment: TextAlign.center,
                text:
                    'Medexer requires access to your location to enhance your experience by connecting you with nearby blood donation centers, helping you find the best route to the center where you have an appointment, and ensuring timely updates about donation opportunities. Rest assured, your location data will remain secure and will not be shared with third parties.',
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            top: AppSizes.vertical_10,
            bottom: Platform.isAndroid
                ? AppSizes.vertical_10
                : AppSizes.vertical_25,
            left: AppSizes.horizontal_15,
            right: AppSizes.horizontal_15,
          ),
          color: AppColors.whiteColor,
          child: CustomButton(
            text: 'Allow Location Access',
            width: double.maxFinite,
            height: 56,
            onTapHandler: () {
              initializeUserLocationPermission();
            },
            fontSize: 16,
            fontColor: AppColors.whiteColor,
            fontWeight: FontWeight.w500,
            borderRadius: 16,
            backgroundColor: AppColors.redColor,
          ),
        ),
      ),
    );
  }
}
