import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/data/infra_sdk/account/lib/account_sdk.dart';

class NotificationCard extends StatelessWidget {
  final NotificationInfo notification;
  const NotificationCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(
        bottom: AppSizes.vertical_10,
      ),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.borderSecondaryColor,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/icons/icon_notification.png',
            width: 14,
            height: 14,
          ),
          const SizedBox(width: AppSizes.horizontal_10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleText(
                  size: 16,
                  title: notification.subject!,
                ),
                const SizedBox(height: AppSizes.vertical_2),
                SubtitleText(
                  text: notification.message!,
                  color: AppColors.textTertiaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
