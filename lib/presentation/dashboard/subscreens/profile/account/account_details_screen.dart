import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/data/repositories/user_repository.dart';
import 'package:medexer/data/repositories/common_repository.dart';
import 'package:medexer/components/buttons/custom_back_button.dart';
import 'package:medexer/presentation/dashboard/profile_screen.dart';
import 'package:medexer/components/cards/account_detail_menu_item_card.dart';

class AccountDetailsScreen extends StatefulWidget {
  const AccountDetailsScreen({super.key});

  @override
  State<AccountDetailsScreen> createState() => _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends State<AccountDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ServiceRegistry.commonRepository.currentScreenIndex.value = 3;

        // Get.back();

        Get.until((route) => Get.currentRoute == AppRoutes.dashboardRoute);

        return false;
      },
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: SafeArea(
            // padding: MediaQuery.of(context).padding,
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.horizontal_15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackButton(
                    callBackFunction: () {
                      ServiceRegistry
                          .commonRepository.currentScreenIndex.value = 3;

                      // Get.back();

                      Get.until((route) =>
                          Get.currentRoute == AppRoutes.dashboardRoute);
                    },
                  ),
                  const TitleText(
                    letterSpacing: 0,
                    fontFamily: 'Roboto',
                    title: 'Profile details',
                  ),
                  const SizedBox(),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Obx(
            () {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.horizontal_15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: AppSizes.vertical_10),
                    AccountDetailMenuItemCard(
                      title: 'Account name',
                      prefixIcon: 'icon_user',
                      suffixIcon: 'icon_edit',
                      routeTo: AppRoutes.updateAccountNameRoute,
                      value:
                          '${ServiceRegistry.userRepository.accountInfo.value.lastName} ${ServiceRegistry.userRepository.accountInfo.value.firstName}',
                    ),
                    AccountDetailMenuItemCard(
                      title: 'Phone number',
                      suffixIcon: 'icon_edit',
                      prefixIcon: 'icon_phone',
                      value: ServiceRegistry
                          .userRepository.accountInfo.value.phone,
                      routeTo: AppRoutes.updateAccountPhoneNumberRoute,
                    ),
                    AccountDetailMenuItemCard(
                      title: 'Email',
                      suffixIcon: 'icon_edit',
                      prefixIcon: 'icon_email',
                      routeTo: AppRoutes.updateAccountEmailRoute,
                      value: ServiceRegistry
                          .userRepository.accountInfo.value.email,
                    ),
                    const Divider(color: AppColors.grayLightColor),
                    const SizedBox(height: AppSizes.vertical_20),
                    const AccountDetailMenuItemCard(
                      value: '',
                      isTextColumn: false,
                      title: 'Change password',
                      suffixIcon: 'icon_chevron_right',
                      prefixIcon: 'icon_security_lock',
                      routeTo: AppRoutes.updateAccountPasswordRoute,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
