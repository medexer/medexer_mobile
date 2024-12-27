import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medexer/components/text/body_text.dart';
import 'package:medexer/components/text/small_text.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/data/infra_sdk/donor/lib/donor_sdk.dart';

class OngoingAppointmentCard extends StatelessWidget {
  final AppointmentInfo appointment;
  const OngoingAppointmentCard({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ServiceRegistry.userRepository.appointmentInfo.value = appointment;

        Get.toNamed(AppRoutes.ongoingAppointmentDescriptionRoute);
      },
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.grayLightColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText(
              size: 14,
              title: appointment.centerName,
            ),
            const SizedBox(height: AppSizes.vertical_5),
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
                          text: 'Blood donation',
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
                            appointment.date.toString(),
                            dateFormat: 'E, d MMM',
                          )['date']!,
                          // weight: FontWeight.w500,
                        ),
                        BodyText(text: ' - '),
                        BodyText(
                          // weight: FontWeight.w500,
                          text: appointment.time,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
