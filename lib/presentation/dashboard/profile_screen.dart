import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/utilities/index.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/buttons/logout_button.dart';
import 'package:medexer/components/appbar/profile_app_bar.dart';
import 'package:medexer/components/cards/profile_menu_item_card.dart';
import 'package:medexer/components/buttons/delete_account_button.dart';
import 'package:medexer/components/navigation/custom_bottom_navigation_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void initializeAccountInfo() {
    ServiceRegistry.accountService.fetchDetailedUserAccountInfoService();
  }

  @override
  initState() {
    initializeAccountInfo();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(
          110,
        ),
        child: ProfileAppBar(),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.horizontal_15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: AppSizes.vertical_10),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: profileMenuItems.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) {
                        return ProfileMenuItemCard(
                          item: profileMenuItems[index],
                        );
                      },
                    ),
                    Divider(color: AppColors.grayLightColor.withOpacity(0.6)),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: otherProfileMenuItems.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) {
                        return ProfileMenuItemCard(
                          item: otherProfileMenuItems[index],
                        );
                      },
                    ),
                    Divider(color: AppColors.grayLightColor.withOpacity(0.6)),
                    const LogoutButton(),
                    const DeleteAccountButton(),
                    const SizedBox(height: AppSizes.vertical_50),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: (int value) {
          ServiceRegistry.commonRepository.currentScreenIndex.value = value;
        },
        currentPage: ServiceRegistry.commonRepository.currentScreenIndex.value,
      ),
    );
  }
}
