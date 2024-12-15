// ignore_for_file: deprecated_member_use
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/core/constants/colors.dart';
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
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: AppColors.textTertiaryColor,
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
        elevation: 0,
        onDestinationSelected: widget.onTap,
        indicatorColor: AppColors.whiteColor,
        animationDuration: const Duration(seconds: 0),
        selectedIndex: commonRepository.currentScreenIndex.value,
        surfaceTintColor: AppColors.primaryBackgroundColor,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        destinations: [
          NavigationDestination(
            icon: Image.asset(
              'assets/icons/icon_home.png',
              width: 22,
              height: 22,
              color: AppColors.textTertiaryColor,
            ),
            selectedIcon: Image.asset(
              'assets/icons/icon_home.png',
              width: 22,
              height: 22,
              color: AppColors.primaryBackgroundColor,
            ),
            label: "Home",
          ),
          NavigationDestination(
            icon: Image.asset(
              'assets/icons/icon_search.png',
              width: 22,
              height: 22,
              color: AppColors.textTertiaryColor,
            ),
            selectedIcon: Image.asset(
              'assets/icons/icon_search.png',
              width: 22,
              height: 22,
              color: AppColors.primaryBackgroundColor,
            ),
            label: "Browse",
          ),
          NavigationDestination(
            icon: Image.asset(
              'assets/icons/icon_order.png',
              width: 22,
              height: 22,
              color: AppColors.textTertiaryColor,
            ),
            selectedIcon: Image.asset(
              'assets/icons/icon_order.png',
              width: 22,
              height: 22,
              color: AppColors.primaryBackgroundColor,
            ),
            label: "Orders",
          ),
          NavigationDestination(
            icon: Image.asset(
              'assets/icons/icon_user.png',
              width: 22,
              height: 22,
              color: AppColors.textTertiaryColor,
            ),
            selectedIcon: Image.asset(
              'assets/icons/icon_user.png',
              width: 22,
              height: 22,
              color: AppColors.primaryBackgroundColor,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
