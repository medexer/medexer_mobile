import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:medexer/components/text/body_text.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/core/middlewares/donor_middlewares.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/data/infra_sdk/donor/lib/donor_sdk.dart';
import 'package:medexer/components/text/small_text.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class CompletedAppointmentCard extends StatelessWidget {
  final AppointmentInfo appointment;
  const CompletedAppointmentCard({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ServiceRegistry.userRepository.appointmentInfo.value = appointment;

        Get.toNamed(AppRoutes.completedAppointmentDescription);
      },
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(
          bottom: AppSizes.vertical_16,
        ),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          // borderRadius: BorderRadius.circular(16),
          // border: Border.all(
          //   color: AppColors.grayLightColor,
          // ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/icon_calendar${appointment.status == AppointmentInfoStatusEnum.completed ? '_check' : '_block'}.png',
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
                          title: appointment.centerName,
                        ),
                        const SizedBox(height: AppSizes.vertical_2),
                        Row(
                          children: [
                            SmallText(
                              text: formatDayDateTime(
                                  appointment.date.toString(),
                                  dateFormat: 'E d MMM')['date']!,
                              color: AppColors.textTertiaryColor,
                            ),
                            const SizedBox(width: AppSizes.horizontal_5),
                            const Icon(
                              FluentIcons.circle_20_filled,
                              size: 4,
                            ),
                            const SizedBox(width: AppSizes.horizontal_5),
                            SmallText(
                              text: appointment.time,
                              color: AppColors.textTertiaryColor,
                            ),
                          ],
                        ),
                        const SizedBox(height: AppSizes.vertical_2),
                        BodyText(
                          text: formatAppointmentStatus(appointment.status),
                          color: appointment.status ==
                                  AppointmentInfoStatusEnum.completed
                              ? AppColors.greenColor
                              : appointment.status ==
                                      AppointmentInfoStatusEnum.cancelled
                                  ? AppColors.redColor
                                  : AppColors.blackColor,
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
