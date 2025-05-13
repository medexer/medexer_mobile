import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:medexer/components/buttons/custom_loading_button.dart';
import 'package:medexer/components/text/body_text.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/utilities/index.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/components/buttons/custom_button.dart';
import 'package:medexer/components/snackbars/custom_snackbar.dart';
import 'package:medexer/components/buttons/labeled_dropdown_selector.dart';

class ComplianceIdentificationStep extends StatelessWidget {
  final String identificationType;
  final String identificationFileUrl;
  PlatformFile? identificationFile;
  final Function(String, dynamic) onChangeHandler;
  ComplianceIdentificationStep({
    super.key,
    required this.onChangeHandler,
    required this.identificationType,
    required this.identificationFile,
    required this.identificationFileUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabeledDropdownSelector(
            label: 'Identification Type',
            items: identificationOptions,
            onChanged: (value) {
              log('[IDENTIFICATION-TYPE] : $value');

              onChangeHandler('identification_type', value.toString());
            },
          ),
          const SizedBox(height: AppSizes.vertical_15),
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.grayLightColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icons/icon_upload_badge.png',
                  width: 40,
                ),
                Visibility(
                  visible: identificationType.isNotEmpty,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: AppSizes.vertical_5),
                      TitleText(title: identificationType),
                    ],
                  ),
                ),
                SubtitleText(
                  color: AppColors.textTertiaryColor,
                  text:
                      'Please provide a copy of your ${identificationType.isEmpty ? 'identification card' : identificationType.toLowerCase()} on a plain background and ensure the edges are visible.',
                ),
                Visibility(
                  visible: identificationFileUrl.isNotEmpty,
                  child: GestureDetector(
                    onTap: () {
                      launchExternalBrowserUrl(identificationFileUrl);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: AppSizes.vertical_5),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/icon_active_file.png',
                              width: 35,
                            ),
                            const SizedBox(width: AppSizes.horizontal_10),
                            Expanded(
                              child: BodyText(
                                maxLines: 4,
                                weight: FontWeight.w500,
                                text: identificationFileUrl,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.vertical_10),
                Obx(() {
                  return ServiceRegistry
                          .accountService.isFileUploadProcessing.isTrue
                      ? CustomLoadingButton(
                          height: 48,
                          borderRadius: 16,
                          fontColor: AppColors.blackColor,
                          backgroundColor: AppColors.whiteColor,
                          borderColor: AppColors.grayColor.withOpacity(0.3),
                        )
                      : CustomButton(
                          text: 'Upload',
                          width: double.maxFinite,
                          height: 48,
                          fontSize: 16,
                          borderRadius: 16,
                          onTapHandler: () async {
                            if (identificationType.isEmpty) {
                              return customErrorMessageSnackbar(
                                title: 'Message',
                                message: 'Please select an identification type',
                              );
                            }

                            PlatformFile? platformFile =
                                await getImageFromDeviceStorage();

                            if (platformFile != null) {
                              String uploadedFileUrl = await ServiceRegistry
                                  .accountService
                                  .uploadFile(platformFile);

                              if (uploadedFileUrl.isNotEmpty) {
                                onChangeHandler(
                                    'identification_file', platformFile);
                                onChangeHandler(
                                    'identification_file_url', uploadedFileUrl);
                              }
                            }
                          },
                          fontWeight: FontWeight.w600,
                          fontColor: AppColors.blackColor,
                          backgroundColor: AppColors.whiteColor,
                          borderColor: AppColors.grayColor.withOpacity(0.3),
                        );
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
