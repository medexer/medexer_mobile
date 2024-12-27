import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/components/text/body_text.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/components/buttons/custom_button.dart';
import 'package:medexer/data/infra_sdk/donor/lib/donor_sdk.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:medexer/components/snackbars/custom_snackbar.dart';
import 'package:medexer/components/buttons/custom_back_button.dart';
import 'package:medexer/components/buttons/custom_loading_button.dart';

class BookAppointmentScreen extends StatefulWidget {
  const BookAppointmentScreen({super.key});

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  int selectedDayIndex = 0;
  int selectedTimeIndex = -1;
  RxBool isTimeSelected = false.obs;

  void submitHandler() {
    if (isTimeSelected.isFalse) {
      return customErrorMessageSnackbar(
        title: 'Message',
        message: 'Please select a time slot',
      );
    } else {
      CreateAppointmentDTO formData = CreateAppointmentDTO(
        (instance) => instance
          ..date = ServiceRegistry.userRepository
              .donationCenterAppointmentAvailability[selectedDayIndex].date
          ..time = ServiceRegistry
              .userRepository
              .donationCenterAppointmentAvailability[selectedDayIndex]
              .availableTimeSlots![selectedTimeIndex]
          ..donationCenter = int.parse(
              ServiceRegistry.userRepository.donationCenterInfo.value.id!),
      );

      ServiceRegistry.donorService.createAppointmentService(
        formData,
        ServiceRegistry.userRepository.donationCenterInfo.value.id!,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: SafeArea(
          child: Container(
            // color: Colors.amber,
            height: double.maxFinite,
            padding: EdgeInsets.only(
              // top: AppSizes.vertical_5,
              left: AppSizes.horizontal_15,
            ),
            child: Row(
              children: [
                CustomBackButton(
                    // callBackFunction: () {
                    //   ServiceRegistry
                    //       .userRepository.donationCenterInfoAppointmentAvailability
                    //       .clear();

                    //   Get.back();
                    // },
                    ),
                const SizedBox(width: AppSizes.horizontal_10),
                TitleText(
                  size: 16,
                  title: 'Book appointment',
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.horizontal_15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        FluentIcons.location_24_filled,
                        color: AppColors.greenColor,
                      ),
                      TitleText(
                        size: 18,
                        title: ServiceRegistry
                            .userRepository.donationCenterInfo.value.name!,
                      ),
                      SubtitleText(
                        text: ServiceRegistry.userRepository
                            .donationCenterInfo.value.address!,
                      ),
                      const SizedBox(height: AppSizes.vertical_10),
                      SubtitleText(
                        text:
                            'Schedule your appointment for any of the following days.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSizes.vertical_15),
                Container(
                  height: 70,
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(
                    left: AppSizes.horizontal_15,
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ServiceRegistry
                        .userRepository.donationCenterDaysOfWork.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTimeIndex = -1;
                            selectedDayIndex = index;
                          });

                          isTimeSelected.value = false;
                        },
                        child: Container(
                          width: 120,
                          height: double.maxFinite,
                          margin: const EdgeInsets.only(
                            right: AppSizes.horizontal_15,
                          ),
                          padding: const EdgeInsets.all(
                            AppSizes.vertical_5,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            border: Border.all(
                              color: selectedDayIndex == index
                                  ? AppColors.blackColor
                                  : AppColors.grayLightColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SubtitleText(
                                weight: FontWeight.w500,
                                text: capitalizeFirstLetter(
                                  ServiceRegistry.userRepository
                                      .donationCenterDaysOfWork[index].day!,
                                ),
                              ),
                              const SizedBox(height: AppSizes.vertical_5),
                              BodyText(
                                text: formatDayDateTime(
                                  ServiceRegistry
                                      .userRepository
                                      .donationCenterAppointmentAvailability[
                                          index]
                                      .date
                                      .toString(),
                                  dateFormat: 'd, MMM y',
                                )['date']!,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: AppSizes.vertical_15),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.horizontal_15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleText(
                        title: 'Select time',
                      ),
                      const SizedBox(height: AppSizes.vertical_10),
                      ListView.builder(
                        itemCount: ServiceRegistry
                            .userRepository
                            .donationCenterAppointmentAvailability[
                                selectedDayIndex]
                            .availableTimeSlots!
                            .length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedTimeIndex = index;
                                isTimeSelected.value = true;
                              });
                            },
                            overlayColor: const WidgetStatePropertyAll(
                              Colors.transparent,
                            ),
                            child: SizedBox(
                              height: 50,
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  BodyText(
                                    text: ServiceRegistry
                                        .userRepository
                                        .donationCenterAppointmentAvailability[
                                            selectedDayIndex]
                                        .availableTimeSlots![index],
                                  ),
                                  Radio(
                                    value: index,
                                    groupValue: selectedTimeIndex,
                                    activeColor: AppColors.greenColor,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedTimeIndex = value!;
                                        isTimeSelected.value = true;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                )
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
          () =>
              ServiceRegistry.donorService.isCreateAppointmentProcessing.isTrue
                  ? const CustomLoadingButton(height: 56)
                  : CustomButton(
                      text: 'Submit',
                      width: double.maxFinite,
                      height: 56,
                      onTapHandler: submitHandler,
                      fontSize: 16,
                      borderRadius: 16,
                      fontColor: AppColors.whiteColor,
                      fontWeight: FontWeight.w500,
                      backgroundColor: isTimeSelected.value
                          ? AppColors.primaryBackgroundColor
                          : AppColors.buttonPrimaryDisabledColor,
                    ),
        ),
      ),
    );
  }
}
