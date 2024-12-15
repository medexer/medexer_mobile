// ignore_for_file: library_prefixes
import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/data/repositories/user_repository.dart';
import 'package:medexer/components/text/custom_text_widget.dart';
import 'package:medexer/data/repositories/common_repository.dart';
import 'package:medexer/components/modals/logout_confirmation_modal.dart';

GetStorage localStorage = GetStorage();
UserRepository userRepository = Get.find<UserRepository>();
CommonRepository commonRepository = Get.find<CommonRepository>();

class LogoutButton extends StatefulWidget {
  const LogoutButton({super.key});

  @override
  State<LogoutButton> createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('[HANDLE-LOGOUT]');

        showDialog(
          context: context,
          barrierColor: AppColors.blackColor.withOpacity(0.8),
          builder: (BuildContext context) {
            return const LogoutConfirmationModal();
          },
        );
      },
      overlayColor: WidgetStateProperty.all(
        Colors.transparent,
      ),
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.vertical_16,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/icons/icon_logout.png',
              width: 18,
              color: AppColors.redColor,
            ),
            const SizedBox(width: AppSizes.horizontal_10),
            SubtitleText(
              text: 'Logout',
              weight: FontWeight.w500,
              color: AppColors.redColor,
            ),
          ],
        ),
      ),
    );
  }
}
