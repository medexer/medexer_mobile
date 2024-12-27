import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/components/text/body_text.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/text/small_text.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/components/buttons/custom_button.dart';
import 'package:medexer/components/buttons/custom_back_button.dart';
import 'package:medexer/core/models/donation_center_info_model.dart';

class OngoingAppointmentDescriptionScreen extends StatefulWidget {
  const OngoingAppointmentDescriptionScreen({super.key});

  @override
  State<OngoingAppointmentDescriptionScreen> createState() =>
      _OngoingAppointmentDescriptionScreenState();
}

class _OngoingAppointmentDescriptionScreenState
    extends State<OngoingAppointmentDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(160),
            child: SafeArea(
              child: Container(
                // color: Colors.amber,
                height: double.maxFinite,
                padding: EdgeInsets.only(
                  top: AppSizes.vertical_5,
                  left: AppSizes.horizontal_15,
                  right: AppSizes.horizontal_15,
                ),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(0, 5),
                      color: AppColors.grayLightColor,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomBackButton(
                          callBackFunction: () {
                            ServiceRegistry
                                .commonRepository.currentScreenIndex.value = 1;

                            Get.until((route) =>
                                Get.currentRoute == AppRoutes.dashboardRoute);
                          },
                        ),
                        const SizedBox(width: AppSizes.horizontal_10),
                        TitleText(
                          size: 18,
                          title: 'Ongoing Appointment',
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.vertical_10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/image_calender.png',
                              width: 50,
                            ),
                            const SizedBox(width: AppSizes.horizontal_10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SmallText(
                                  text: 'Pending',
                                  color: AppColors.primaryColor,
                                ),
                                SmallText(
                                  text: 'Appointment',
                                  weight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            BodyText(
                              text: 'Date/Time',
                              weight: FontWeight.w500,
                            ),
                            const SizedBox(height: AppSizes.vertical_5),
                            Row(
                              children: [
                                BodyText(
                                  text: formatDayDateTime(
                                    ServiceRegistry.userRepository
                                        .appointmentInfo.value.date
                                        .toString(),
                                    dateFormat: 'E, d MMM',
                                  )['date']!,
                                  // weight: FontWeight.w500,
                                ),
                                BodyText(text: ' - '),
                                BodyText(
                                  // weight: FontWeight.w500,
                                  text: ServiceRegistry.userRepository
                                      .appointmentInfo.value.time,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.vertical_10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallText(
                              weight: FontWeight.w500,
                              text: 'Your verification code',
                            ),
                            SmallText(
                              text:
                                  'Unique ID: ${ServiceRegistry.userRepository.appointmentInfo.value.appointmentId}',
                            ),
                          ],
                        ),
                        Row(
                          children: List.generate(
                            ServiceRegistry.userRepository.appointmentInfo.value
                                .verificationCode.length,
                            (index) {
                              return Container(
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.only(
                                  right: index != 3 ? AppSizes.horizontal_5 : 0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: AppColors.grayLightColor,
                                  ),
                                ),
                                child: Center(
                                  child: SubtitleText(
                                    text: ServiceRegistry
                                        .userRepository
                                        .appointmentInfo
                                        .value
                                        .verificationCode[index],
                                    weight: FontWeight.w500,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.horizontal_15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSizes.vertical_20),
                TitleText(
                  size: 18,
                  title: ServiceRegistry
                      .userRepository.appointmentInfo.value.centerName,
                ),
                const SizedBox(height: AppSizes.vertical_5),
                SubtitleText(
                  text: ServiceRegistry
                      .userRepository.appointmentInfo.value.centerAddress,
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
                          .userRepository.appointmentInfo.value.centerName,
                      'latitude': ServiceRegistry
                          .userRepository.appointmentInfo.value.centerLatitude,
                      'longitude': ServiceRegistry
                          .userRepository.appointmentInfo.value.centerLongitude,
                      'address': ServiceRegistry
                          .userRepository.appointmentInfo.value.centerAddress,
                      'phone': ServiceRegistry
                          .userRepository.appointmentInfo.value.centerPhone,
                      'coverPhoto': ServiceRegistry.userRepository
                          .appointmentInfo.value.centerCoverPhoto,
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
                            .userRepository.appointmentInfo.value.centerPhone,
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
              ],
            ),
          ),
        );
      },
    );
  }
}
