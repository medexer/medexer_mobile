import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:medexer/core/models/profile_menu_item_model.dart';

class ProfileMenuItemCard extends StatelessWidget {
  final ProfileMenuItemModel item;
  const ProfileMenuItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('REDIRECT-TO -> ${item.route_to!}');

        Get.toNamed(item.route_to!);
      },
      overlayColor: WidgetStateProperty.all(
        Colors.transparent,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.vertical_14,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  item.icon!,
                  width: 18,
                  color: AppColors.grayColor.withOpacity(
                    0.8,
                  ),
                ),
                const SizedBox(width: AppSizes.horizontal_10),
                SubtitleText(
                  text: item.title!,
                  weight: FontWeight.w400,
                ),
              ],
            ),
            const Icon(
              FluentIcons.chevron_right_12_regular,
              size: 16,
              color: AppColors.grayColor,
            ),
          ],
        ),
      ),
    );
  }
}
