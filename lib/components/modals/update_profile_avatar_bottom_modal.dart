// ignore_for_file: use_build_context_synchronously
import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/utilities/index.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/buttons/custom_x_button.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class UpdateProfileAvatarBottomModal extends StatefulWidget {
  const UpdateProfileAvatarBottomModal({super.key});

  @override
  State<UpdateProfileAvatarBottomModal> createState() =>
      _UpdateProfileAvatarBottomModalState();
}

class _UpdateProfileAvatarBottomModalState
    extends State<UpdateProfileAvatarBottomModal> {
  late PlatformFile avatar;
  bool avatarUploaded = false;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Container(
          height: 200,
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(
            vertical: AppSizes.vertical_5,
            horizontal: AppSizes.horizontal_15,
          ),
          decoration: const BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                      size: 16,
                      weight: FontWeight.w700,
                      title: 'Choose your avatar',
                    ),
                    CustomXButton(),
                  ],
                ),
              ),
              SizedBox(
                height:
                    ServiceRegistry.accountService.isFileUploadProcessing.isTrue
                        ? 0
                        : AppSizes.vertical_10,
              ),
              ServiceRegistry.accountService.isFileUploadProcessing.isTrue
                  ? Expanded(
                      child: LoadingAnimationWidget.hexagonDots(
                        size: 30,
                        color: AppColors.buttonPrimaryColor,
                      ),
                    )
                  : Center(
                      child: Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        alignment: WrapAlignment.center,
                        runAlignment: WrapAlignment.spaceBetween,
                        children: List.generate(
                          profileAvatars.length,
                          (index) {
                            return InkWell(
                              onTap: () async {
                                if (ServiceRegistry.accountService
                                    .isFileUploadProcessing.isTrue) {
                                  return;
                                }

                                if (profileAvatars[index]['type'] == 'AVATAR') {
                                  log('[USE-AVATAR-IMAGE]');

                                  ServiceRegistry.accountService
                                      .updateAccountAvatarService(
                                    context: context,
                                    platformFile: null,
                                    photoUrl: profileAvatars[index]['image'],
                                  );
                                } else {
                                  log('[USE-LOCAL-FILE-IMAGE]');

                                  PlatformFile? platformFile =
                                      await getImageFromDeviceStorage();

                                  // log('[FILE] :: $platformFile');

                                  setState(() {
                                    if (platformFile != null) {
                                      avatarUploaded = true;
                                      avatar = platformFile;
                                    }
                                  });

                                  if (avatarUploaded == true) {
                                    ServiceRegistry.accountService
                                        .updateAccountAvatarService(
                                      photoUrl: null,
                                      context: context,
                                      platformFile: platformFile!,
                                    );
                                  }
                                }
                              },
                              overlayColor: const WidgetStatePropertyAll(
                                Colors.transparent,
                              ),
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    color: profileAvatars[index]['type'] ==
                                            'AVATAR'
                                        ? AppColors.grayColor.withOpacity(0.2)
                                        : Colors.transparent,
                                    width: profileAvatars[index]['type'] ==
                                            'AVATAR'
                                        ? 1
                                        : 0,
                                  ),
                                  image: DecorationImage(
                                    image: profileAvatars[index]['type'] ==
                                            'AVATAR'
                                        ? NetworkImage(
                                            profileAvatars[index]['image'],
                                          )
                                        : AssetImage(
                                            profileAvatars[index]['image']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
