import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/components/cards/medical_result_card.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/models/donation_center_info_model.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/components/buttons/custom_button.dart';
import 'package:medexer/components/buttons/custom_back_button.dart';

class MedicalHistoryDescriptionScreen extends StatelessWidget {
  const MedicalHistoryDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: SafeArea(
          child: Container(
            // color: Colors.amber,
            height: double.maxFinite,
            padding: EdgeInsets.symmetric(
              // top: AppSizes.vertical_5,
              horizontal: AppSizes.horizontal_15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackButton(),
                TitleText(
                  size: 16,
                  title: 'Medical History',
                ),
                const SizedBox(),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Container(
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
                      .userRepository.medicalHistoryInfo.value.centerName,
                ),
                const SizedBox(height: AppSizes.vertical_5),
                SubtitleText(
                  text: ServiceRegistry
                      .userRepository.medicalHistoryInfo.value.centerAddress,
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
                          .userRepository.medicalHistoryInfo.value.centerName,
                      'latitude': ServiceRegistry.userRepository
                          .medicalHistoryInfo.value.centerLatitude,
                      'longitude': ServiceRegistry.userRepository
                          .medicalHistoryInfo.value.centerLongitude,
                      'address': ServiceRegistry.userRepository
                          .medicalHistoryInfo.value.centerAddress,
                      'phone': ServiceRegistry
                          .userRepository.medicalHistoryInfo.value.centerPhone,
                      'coverPhoto': ServiceRegistry.userRepository
                          .medicalHistoryInfo.value.centerCoverPhoto,
                    });

                    Get.toNamed(AppRoutes.donationCenterMapRoute);
                  },
                  fontWeight: FontWeight.w500,
                  fontColor: AppColors.blackColor,
                  backgroundColor: AppColors.whiteColor,
                  borderColor: AppColors.borderSecondaryColor,
                ),
                const SizedBox(height: AppSizes.vertical_15),
                MedicalResultCard(
                  title: 'Genotype',
                  result: ServiceRegistry
                      .userRepository.medicalHistoryInfo.value.genotype,
                ),
                MedicalResultCard(
                  title: 'Blood Group',
                  result: ServiceRegistry
                      .userRepository.medicalHistoryInfo.value.bloodGroup,
                ),
                MedicalResultCard(
                  title: 'HIV1',
                  result: ServiceRegistry
                          .userRepository.medicalHistoryInfo.value.hiv1
                      ? 'Active'
                      : 'Inactive',
                ),
                MedicalResultCard(
                  title: 'HIV2',
                  result: ServiceRegistry
                          .userRepository.medicalHistoryInfo.value.hiv2
                      ? 'Active'
                      : 'Inactive',
                ),
                MedicalResultCard(
                  title: 'Hepatitis B(HBV)',
                  result: ServiceRegistry
                          .userRepository.medicalHistoryInfo.value.hepatitisB
                      ? 'Active'
                      : 'Inactive',
                ),
                MedicalResultCard(
                  title: 'Hepatitis C(HCV)',
                  result: ServiceRegistry
                          .userRepository.medicalHistoryInfo.value.hepatitisC
                      ? 'Active'
                      : 'Inactive',
                ),
                MedicalResultCard(
                  title: 'Syphilis',
                  result: ServiceRegistry
                          .userRepository.medicalHistoryInfo.value.syphilis
                      ? 'Active'
                      : 'Inactive',
                ),
                const SizedBox(height: AppSizes.vertical_40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
