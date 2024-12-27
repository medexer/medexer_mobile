import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/text/small_text.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:medexer/data/infra_sdk/account/lib/account_sdk.dart';

class MedicalHistoryCard extends StatelessWidget {
  final MedicalHistoryInfo medicalHistory;
  const MedicalHistoryCard({super.key, required this.medicalHistory});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ServiceRegistry.userRepository.medicalHistoryInfo.value =
            medicalHistory;

        Get.toNamed(AppRoutes.medicalHistoryDescriptionRoute);
      },
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(
          bottom: AppSizes.vertical_16,
        ),
        color: AppColors.whiteColor,
        child: Row(
          children: [
            Flexible(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/icon_heart_signal_2.png',
                    width: 20,
                    color: AppColors.blackColor,
                  ),
                  const SizedBox(width: AppSizes.horizontal_8),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleText(
                          size: 16,
                          title: medicalHistory.centerName,
                        ),
                        const SizedBox(height: AppSizes.vertical_2),
                        Row(
                          children: [
                            SmallText(
                              text: formatDayDateTime(
                                  medicalHistory.createdAt.toString(),
                                  dateFormat: 'd MMM, y')['date']!,
                              color: AppColors.textTertiaryColor,
                            ),
                            const SizedBox(width: AppSizes.horizontal_5),
                            const Icon(
                              FluentIcons.circle_20_filled,
                              size: 4,
                            ),
                            const SizedBox(width: AppSizes.horizontal_5),
                            SmallText(
                              text: formatDayDateTime(
                                  medicalHistory.createdAt.toString(),
                                  dateFormat: 'E d MMM')['time']!,
                              color: AppColors.textTertiaryColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/icons/icon_arrow_right.png',
              width: 20,
              color: AppColors.blackColor,
            ),
          ],
        ),
      ),
    );
  }
}
