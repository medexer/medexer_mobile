import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/utilities/index.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/core/models/drawer_item_model.dart';
import 'package:medexer/components/badges/dexer_icon_badge.dart';

class CustomDrawer extends StatefulWidget {
  final String? title;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Widget? headerWidget;

  const CustomDrawer({
    super.key,
    this.title = 'Medexer',
    this.headerWidget,
    required this.scaffoldKey,
  });

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.horizontal_20,
        ),
        color: AppColors.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSizes.vertical_20),
            widget.headerWidget ??
                SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      DexerIconBadge(),
                      const SizedBox(width: AppSizes.horizontal_10),
                      TitleText(
                        size: 20,
                        title: widget.title!,
                      ),
                    ],
                  ),
                ),
            const SizedBox(height: AppSizes.vertical_10),
            ...drawerItems.map((item) => _buildDrawerItem(item)),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(DrawerItem item) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (item.routeTo.isNotEmpty) {
              Get.toNamed(item.routeTo);

              widget.scaffoldKey.currentState?.closeDrawer();
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.horizontal_10,
              vertical: AppSizes.vertical_15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: item.routeTo == Get.currentRoute
                  ? AppColors.grayLightColor
                  : AppColors.whiteColor,
            ),
            child: Row(
              children: [
                Image.asset(
                  item.icon,
                  width: 19,
                  height: 19,
                  color: AppColors.blackColor,
                ),
                const SizedBox(width: AppSizes.horizontal_15),
                SubtitleText(
                  text: item.title,
                  weight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppSizes.vertical_10),
      ],
    );
  }
}
