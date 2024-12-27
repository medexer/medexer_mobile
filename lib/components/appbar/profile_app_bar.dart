import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/body_text.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/buttons/custom_support_button.dart';
import 'package:medexer/components/images/cached_network_image_widget.dart';
import 'package:medexer/components/modals/update_profile_avatar_bottom_modal.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // padding: MediaQuery.of(context).padding,
      child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.horizontal_15,
        ),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSizes.vertical_8),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        log('[OPEN-UPDATE-PROFILE-AVATAR-MODAL]');

                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return const UpdateProfileAvatarBottomModal();
                          },
                        );
                      },
                      overlayColor: const WidgetStatePropertyAll(
                        Colors.transparent,
                      ),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: 2,
                            color: AppColors.grayLightColor,
                          ),
                        ),
                        child: ClipOval(
                          child: CachedNetworkImageWidget(
                            height: double.maxFinite,
                            width: double.maxFinite,
                            imageUrl: ServiceRegistry
                                .userRepository.accountInfo.value.profilePhoto,
                            errorAssetImage: 'assets/images/image_avatar_1.png',
                          ),
                        ),
                      ),
                    ),
                    const CustomSupportButton(),
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.vertical_8),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleText(
                          size: 18,
                          // title: '',
                          title:
                              '${ServiceRegistry.userRepository.accountInfo.value.firstName} ${ServiceRegistry.userRepository.accountInfo.value.lastName}',
                        ),
                        const SizedBox(height: AppSizes.vertical_3),
                        BodyText(
                          weight: FontWeight.normal,
                          color: AppColors.grayColor,
                          // text: '',
                          text: ServiceRegistry
                              .userRepository.accountInfo.value.phone,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
