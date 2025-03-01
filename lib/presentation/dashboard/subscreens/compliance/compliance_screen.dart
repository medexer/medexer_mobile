import 'dart:io';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:medexer/components/buttons/custom_loading_button.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/utilities/index.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/components/buttons/custom_button.dart';
import 'package:medexer/components/badges/dexer_icon_badge.dart';
import 'package:medexer/core/middlewares/donor_middlewares.dart';
import 'package:medexer/data/infra_sdk/donor/lib/donor_sdk.dart';
import 'package:medexer/components/snackbars/custom_snackbar.dart';
import 'package:medexer/components/buttons/grouped_header_buttons.dart';
import 'package:medexer/presentation/dashboard/subscreens/compliance/compliance_identification_step.dart';
import 'package:medexer/presentation/dashboard/subscreens/compliance/compliance_personal_details_step.dart';

class ComplianceScreen extends StatefulWidget {
  const ComplianceScreen({super.key});

  @override
  State<ComplianceScreen> createState() => _ComplianceScreenState();
}

class _ComplianceScreenState extends State<ComplianceScreen> {
  String genotype = '';
  String bloodGroup = '';
  bool hasTattoos = false;
  bool donatedBlood = false;
  DateTime? lastDonationDate;
  String identificationType = '';
  PlatformFile? identificationFile;
  String identificationFileUrl = '';

  String complianceStep = 'Personal details';
  // String complianceStep = 'Identification';

  RxBool isIdentificationStepValid = false.obs;
  RxBool isPersonalDetailsStepValid = false.obs;

  void onFormChangeHandler(String key, dynamic value) {
    log('[ON-CHANGE-HANDLER] : $key -> $value');

    setState(() {
      if (key == 'blood_group') {
        bloodGroup = value;
      } else if (key == 'genotype') {
        genotype = value;
      } else if (key == 'donated_blood') {
        donatedBlood = value == 'Yes' ? true : false;

        if (donatedBlood == false) {
          lastDonationDate = null;
        }
      } else if (key == 'last_donation_date') {
        lastDonationDate = DateTime.parse(value);
      } else if (key == 'has_tattoos') {
        hasTattoos = value == 'Yes' ? true : false;
      } else if (key == 'identification_type') {
        identificationType = value;
      } else if (key == 'identification_file') {
        identificationFile = value;
      } else if (key == 'identification_file_url') {
        identificationFileUrl = value;
      }
    });

    if (bloodGroup.isNotEmpty &&
        genotype.isNotEmpty &&
        ((donatedBlood == true && lastDonationDate != null) ||
            donatedBlood == false)) {
      isPersonalDetailsStepValid.value = true;
    } else {
      isPersonalDetailsStepValid.value = false;
    }

    if (identificationType.isNotEmpty && identificationFileUrl.isNotEmpty) {
      isIdentificationStepValid.value = true;
    } else {
      isIdentificationStepValid.value = false;
    }
  }

  void submitHandler() {
    log('[SUBMIT-HANDLER]');

    if (complianceStep == 'Personal details' &&
        isPersonalDetailsStepValid.isFalse) {
      return customErrorMessageSnackbar(
        title: 'Message',
        message: 'Please fill in all required fields',
      );
    } else if (complianceStep == 'Personal details' &&
        isPersonalDetailsStepValid.isTrue) {
      setState(() {
        complianceStep = 'Identification';
      });
    } else if (complianceStep == 'Identification' &&
        isIdentificationStepValid.isFalse) {
      return customErrorMessageSnackbar(
        title: 'Message',
        message: 'Please fill in all required fields',
      );
    } else {
      UploadDonorComplianceDTO formData = UploadDonorComplianceDTO(
        (instance) => instance
          ..bloodGroup = getBloodGroupEnum(bloodGroup)
          ..genotype = getGenotypeEnum(genotype)
          ..hasPreviouslyDonatedBlood = donatedBlood
          ..lastDonatedBloodDate = lastDonationDate?.toUtc()
          ..hasTattoos = hasTattoos
          ..identificationType = getIdentificationTypeEnum(identificationType)
          ..identificationDocument = identificationFileUrl,
      );

      ServiceRegistry.donorService.uploadComplianceService(formData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        return;
      },
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(180),
          child: SafeArea(
            // padding: MediaQuery.of(context).padding,
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              // color: Colors.amber,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.horizontal_15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AppSizes.vertical_10),
                  const DexerIconBadge(),
                  TitleText(
                    size: 20,
                    title: 'Compliance',
                  ),
                  const SizedBox(height: AppSizes.vertical_5),
                  SubtitleText(
                    color: AppColors.textTertiaryColor,
                    text: 'Complete your KYC flow to help us know you better.',
                  ),
                  const SizedBox(height: AppSizes.vertical_5),
                  GroupedHeaderButtons(
                    currentItem: complianceStep,
                    buttonTypes: complianceSteps,
                    onChangeHandler: (String value) {
                      if (complianceStep == 'Identification') {
                        return;
                      }

                      log('[UPDATE-VIEW-ORDERS-TYPE] -> ${value.toUpperCase()}');

                      setState(() {
                        complianceStep = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.horizontal_15,
            ),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSizes.vertical_20),
                complianceStep == 'Personal details'
                    ? CompliancePersonalDetailsStep(
                        donatedBlood: donatedBlood,
                        onChangeHandler: onFormChangeHandler,
                      )
                    : ComplianceIdentificationStep(
                        onChangeHandler: onFormChangeHandler,
                        identificationFile: identificationFile,
                        identificationType: identificationType,
                        identificationFileUrl: identificationFileUrl,
                      ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(
            top: AppSizes.vertical_10,
            bottom: Platform.isAndroid
                ? AppSizes.vertical_10
                : AppSizes.vertical_25,
            left: AppSizes.horizontal_15,
            right: AppSizes.horizontal_15,
          ),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            border: Border.all(
              color: AppColors.grayLightColor,
            ),
          ),
          child: Obx(
            () =>
                ServiceRegistry.donorService.isUploadComplianceProcessing.isTrue
                    ? const CustomLoadingButton(height: 56)
                    : CustomButton(
                        text: 'Continue',
                        width: double.maxFinite,
                        height: 56,
                        fontSize: 16,
                        borderRadius: 16,
                        onTapHandler: submitHandler,
                        fontWeight: FontWeight.w600,
                        fontColor: AppColors.whiteColor,
                        backgroundColor: isPersonalDetailsStepValid.isFalse
                            ? AppColors.buttonPrimaryDisabledColor
                            : AppColors.buttonPrimaryColor,
                      ),
          ),
        ),
      ),
    );
  }
}
