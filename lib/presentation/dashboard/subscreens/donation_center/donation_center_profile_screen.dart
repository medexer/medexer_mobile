import 'dart:io';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/components/buttons/custom_loading_button.dart';
import 'package:medexer/components/snackbars/custom_snackbar.dart';
import 'package:medexer/core/models/donation_center_info_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/components/buttons/custom_button.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:medexer/components/buttons/custom_back_button.dart';
import 'package:medexer/components/images/cached_network_image_widget.dart';

class DonationCenterProfileScreen extends StatefulWidget {
  const DonationCenterProfileScreen({super.key});

  @override
  State<DonationCenterProfileScreen> createState() =>
      _DonationCenterProfileScreenState();
}

class _DonationCenterProfileScreenState
    extends State<DonationCenterProfileScreen> {
  void initializeDonationCenterProfile() {
    ServiceRegistry.donorService.fetchDonationCenterProfileService(
      donationCenterId:
          ServiceRegistry.userRepository.donationCenterInfo.value.id!,
    );
  }

  @override
  void initState() {
    initializeDonationCenterProfile();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          140,
        ),
        child: Obx(
          () => Container(
            width: double.maxFinite,
            color: AppColors.whiteColor,
            child: Stack(
              children: [
                Positioned.fill(
                  child: CachedNetworkImageWidget(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    imageUrl: ServiceRegistry
                        .userRepository.donationCenterInfo.value.coverPhoto!,
                    errorAssetImage: 'assets/images/default.jpg',
                  ),
                ),
                Positioned(
                  top: 0,
                  child: SafeArea(
                    child: Container(
                      width: AppSizes.screenWidth(context),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSizes.horizontal_10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomBackButton(
                            backgroundColor: AppColors.whiteColor,
                          ),
                          Icon(
                            FluentIcons.heart_16_regular,
                            color: AppColors.whiteColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.horizontal_15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSizes.vertical_10),
                TitleText(
                  size: 20,
                  title: ServiceRegistry
                      .userRepository.donationCenterInfo.value.name!,
                ),
                SubtitleText(
                  text: ServiceRegistry
                      .userRepository.donationCenterInfo.value.address!,
                ),
                const SizedBox(height: AppSizes.vertical_15),
                CustomButton(
                  text: 'View Map',
                  width: double.maxFinite,
                  height: 54,
                  fontSize: 16,
                  borderRadius: 16,
                  onTapHandler: () {
                    ServiceRegistry.commonRepository.donationCenterInfo.value =
                        DonationCenterInfoModel.fromJson({
                      'name': ServiceRegistry
                          .userRepository.donationCenterInfo.value.name,
                      'latitude': ServiceRegistry
                          .userRepository.donationCenterInfo.value.latitude,
                      'longitude': ServiceRegistry
                          .userRepository.donationCenterInfo.value.longitude,
                      'address': ServiceRegistry
                          .userRepository.donationCenterInfo.value.address,
                      'phone': ServiceRegistry
                          .userRepository.donationCenterInfo.value.phone,
                      'coverPhoto': ServiceRegistry
                          .userRepository.donationCenterInfo.value.coverPhoto,
                    });

                    Get.toNamed(AppRoutes.donationCenterMapRoute);
                  },
                  fontWeight: FontWeight.w500,
                  fontColor: AppColors.blackColor,
                  backgroundColor: AppColors.whiteColor,
                  borderColor: AppColors.borderSecondaryColor,
                ),
                const SizedBox(height: AppSizes.vertical_10),
                CustomButton(
                  text: 'Call',
                  width: double.maxFinite,
                  height: 54,
                  fontSize: 16,
                  borderRadius: 16,
                  onTapHandler: () async {
                    try {
                      Uri url = Uri(
                        scheme: 'tel',
                        path: ServiceRegistry
                            .userRepository.donationCenterInfo.value.phone,
                      );

                      await canLaunchUrl(url);

                      await launchUrl(url,
                          mode: LaunchMode.externalApplication);
                    } catch (error) {
                      log('[LAUNCH-CALL-DONATION-CENTER-ERROR] : ${error.toString()}');
                    }
                  },
                  fontWeight: FontWeight.w500,
                  fontColor: AppColors.whiteColor,
                  borderColor: AppColors.dangerColor,
                  backgroundColor: AppColors.dangerColor,
                ),
                const SizedBox(height: AppSizes.vertical_15),
                TitleText(
                  title: 'About',
                ),
                SubtitleText(
                  text: ServiceRegistry
                      .userRepository.donationCenterInfo.value.longDescription!,
                ),
                const SizedBox(height: AppSizes.vertical_15),
                TitleText(
                  title: 'Ratings',
                ),
                SubtitleText(
                  text:
                      'Donors can rate donation centres/hospitals after an appointment has been completed.d',
                ),
                const SizedBox(height: AppSizes.vertical_15),
                Visibility(
                  visible: ServiceRegistry
                      .userRepository.donationCenterDaysOfWork.isNotEmpty,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleText(
                        title: 'Opening hours',
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: ServiceRegistry
                            .userRepository.donationCenterDaysOfWork.length,
                        itemBuilder: (_, index) {
                          return Container(
                            width: double.maxFinite,
                            margin: const EdgeInsets.only(
                              bottom: AppSizes.vertical_15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SubtitleText(
                                  text: capitalizeFirstLetter(
                                    ServiceRegistry.userRepository
                                        .donationCenterDaysOfWork[index].day!,
                                  ),
                                ),
                                SubtitleText(
                                  text:
                                      '${ServiceRegistry.userRepository.donationCenterDaysOfWork[index].open!} - ${ServiceRegistry.userRepository.donationCenterDaysOfWork[index].close!}',
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
        child: Obx(
          () {
            return ServiceRegistry
                    .donorService.isFetchDonationCenterProfileProcessing.isTrue
                ? CustomLoadingButton(height: 56)
                : CustomButton(
                    text: 'Book appointment',
                    width: double.maxFinite,
                    height: 56,
                    onTapHandler: () async {
                      await ServiceRegistry.donorService
                          .fetchDonationCenterProfileService(
                        donationCenterId: ServiceRegistry
                            .userRepository.donationCenterInfo.value.id!,
                        enableLoader: true,
                      );

                      Get.toNamed(AppRoutes.bookAppointmentRoute);
                    },
                    fontSize: 16,
                    borderRadius: 16,
                    fontColor: AppColors.whiteColor,
                    fontWeight: FontWeight.w500,
                    backgroundColor: AppColors.primaryBackgroundColor,
                  );
          },
        ),
      ),
    );
  }
}
