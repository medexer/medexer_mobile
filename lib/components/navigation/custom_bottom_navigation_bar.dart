// ignore_for_file: deprecated_member_use
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/components/indicators/notification_indicator.dart';
import 'package:medexer/components/text/small_text.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/data/repositories/common_repository.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentPage;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.onTap,
    required this.currentPage,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  CommonRepository commonRepository = Get.find<CommonRepository>();

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>(
          (Set<MaterialState> states) {
            TextStyle textStyle = const TextStyle(
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              color: AppColors.textTertiaryInverseColor,
            );

            if (states.contains(MaterialState.selected)) {
              textStyle = textStyle.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryBackgroundColor,
              );
            }

            return textStyle;
          },
        ),
      ),
      child: NavigationBar(
        height: 60,
        // elevation: 0,

        onDestinationSelected: widget.onTap,
        indicatorColor: AppColors.whiteColor,
        animationDuration: const Duration(seconds: 0),
        selectedIndex: commonRepository.currentScreenIndex.value,
        surfaceTintColor: AppColors.whiteColor,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        destinations: [
          NavigationDestination(
            icon: Image.asset(
              'assets/icons/icon_home.png',
              width: 18,
              height: 18,
              color: AppColors.textTertiaryInverseColor,
            ),
            selectedIcon: Image.asset(
              'assets/icons/icon_home.png',
              width: 18,
              height: 18,
              color: AppColors.primaryBackgroundColor,
            ),
            label: "Home",
          ),
          NavigationDestination(
            icon: SizedBox(
              width: 22,
              height: 22,
              child: Obx(
                () => Stack(
                  children: [
                    Image.asset(
                      'assets/icons/icon_appointment.png',
                      width: 18,
                      height: 18,
                      color: AppColors.textTertiaryInverseColor,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Visibility(
                        visible: ServiceRegistry.userRepository.notifications
                            .where((element) => element.isRead == false)
                            .isNotEmpty,
                        child: NotificationIndicator(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            selectedIcon: SizedBox(
              width: 22,
              height: 22,
              child: Obx(
                () => Stack(
                  children: [
                    Image.asset(
                      'assets/icons/icon_appointment.png',
                      width: 18,
                      height: 18,
                      color: AppColors.primaryBackgroundColor,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Visibility(
                        visible: ServiceRegistry.userRepository.notifications
                            .where((element) => element.isRead == false)
                            .isNotEmpty,
                        child: NotificationIndicator(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            label: "Appointments",
          ),
          NavigationDestination(
            icon: Image.asset(
              'assets/icons/icon_notification.png',
              width: 18,
              height: 18,
              color: AppColors.textTertiaryInverseColor,
            ),
            selectedIcon: Image.asset(
              'assets/icons/icon_notification.png',
              width: 18,
              height: 18,
              color: AppColors.primaryBackgroundColor,
            ),
            label: "Notifications",
          ),
          NavigationDestination(
            icon: Image.asset(
              'assets/icons/icon_profile.png',
              width: 18,
              height: 18,
              color: AppColors.textTertiaryInverseColor,
            ),
            selectedIcon: Image.asset(
              'assets/icons/icon_profile.png',
              width: 18,
              height: 18,
              color: AppColors.primaryBackgroundColor,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
