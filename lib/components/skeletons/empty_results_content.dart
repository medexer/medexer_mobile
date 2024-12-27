import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/text/subtitle_text.dart';

class EmptyResultsContent extends StatelessWidget {
  final double? height;
  final String displayType;
  const EmptyResultsContent(
      {super.key, this.height, required this.displayType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: height ?? AppSizes.screenHeight(context) * 0.5,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.horizontal_30,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icons/icon_${displayType == 'DONATION_CENTERS' ? 'science' : displayType == 'MEDICAL_HISTORY' ? 'heart_signal' : displayType == 'FAVORITE_CENTERS' ? 'health_medical' : displayType == 'NOTIFICATIONS' ? 'notification_off' : 'folder_empty'}.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: AppSizes.vertical_10),
          Visibility(
            visible: displayType != 'DONATION_CENTERS',
            child: TitleText(
              size: 20,
              title: displayType == 'FAVORITE_CENTERS'
                  ? 'No Favorite Centers'
                  : displayType == 'ONGOING_APPOINTMENTS'
                      ? 'No Ongoing Appointments'
                      : displayType == 'MEDICAL_HISTORY'
                          ? 'No Medical History'
                          : displayType == 'NOTIFICATIONS'
                              ? 'No New Notifications'
                              : 'No Completed Appointments',
            ),
          ),
          const SizedBox(height: AppSizes.vertical_5),
          SubtitleText(
            alignment: TextAlign.center,
            text: displayType == 'DONATION_CENTERS'
                ? 'No donation centers found'
                : displayType == 'FAVORITE_CENTERS'
                    ? 'Your favorite centers will display here.'
                    : displayType == 'MEDICAL_HISTORY'
                        ? 'Your medical history will show here after successful blood donations.'
                        : displayType == 'ONGOING_APPOINTMENTS'
                            ? 'Your appointments appear here once created from a donation center.'
                            : displayType == 'NOTIFICATIONS'
                                ? 'You will see new notifications here once you have new notifications.'
                                : 'Your past appointments will appear here once completed.',
          ),
        ],
      ),
    );
  }
}
