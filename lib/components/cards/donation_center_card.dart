import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/components/text/body_text.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/data/infra_sdk/account/lib/account_sdk.dart';
import 'package:medexer/data/infra_sdk/donor/lib/donor_sdk.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:medexer/components/images/cached_network_image_widget.dart';

class DonationCenterCard extends StatelessWidget {
  final DonationCenterInfo donationCenter;
  const DonationCenterCard({super.key, required this.donationCenter});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ServiceRegistry.userRepository.donationCenterInfo.value =
            donationCenter;

        Get.toNamed(AppRoutes.donationCenterProfileRoute);
      },
      child: Container(
        width: double.maxFinite,
        margin: const EdgeInsets.only(
          bottom: AppSizes.vertical_15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 150,
                  width: double.maxFinite,
                  child: Stack(
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: CachedNetworkImageWidget(
                            width: double.maxFinite,
                            height: double.maxFinite,
                            imageUrl: donationCenter.coverPhoto!,
                            errorAssetImage: 'assets/images/default.jpg',
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        height: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColors.blackColor.withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: Obx(
                    () {
                      return InkWell(
                        onTap: () {
                          int likeIndex = ServiceRegistry
                              .userRepository.likedItems
                              .indexWhere((fav) {
                            return fav.itemId == donationCenter.id;
                          });

                          if (likeIndex != -1) {
                            ServiceRegistry.accountService
                                .unlikeDonationCenterService(
                              ServiceRegistry
                                  .userRepository.likedItems[likeIndex].id,
                            );
                          } else {
                            AddListItemDTO payload = AddListItemDTO(
                              (instance) =>
                                  instance..itemId = donationCenter.id,
                            );

                            ServiceRegistry.accountService
                                .likeDonationCenterService(
                              payload,
                            );
                          }
                        },
                        child: CircleAvatar(
                          backgroundColor:
                              AppColors.blackColor.withOpacity(0.3),
                          radius: 14,
                          child: Icon(
                            ServiceRegistry.userRepository.likedItems
                                        .indexWhere((fav) {
                                      return fav.itemId == donationCenter.id;
                                    }) !=
                                    -1
                                ? FluentIcons.heart_20_filled
                                : FluentIcons.heart_20_regular,
                            color: ServiceRegistry.userRepository.likedItems
                                        .indexWhere((fav) {
                                      return fav.itemId == donationCenter.id;
                                    }) !=
                                    -1
                                ? AppColors.redColor
                                : AppColors.whiteColor,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.vertical_5),
            TitleText(
              size: 16,
              maxLines: 5,
              title: donationCenter.name!,
            ),
            const SizedBox(height: AppSizes.vertical_5),
            BodyText(
              text: '${capitalizeFirstLetter(donationCenter.state!)} State',
            ),
          ],
        ),
      ),
    );
  }
}
