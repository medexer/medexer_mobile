import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/components/form/form_password_field.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/form/form_phone_field.dart';
import 'package:medexer/components/buttons/custom_button.dart';
import 'package:medexer/data/repositories/user_repository.dart';
import 'package:medexer/components/text/custom_text_widget.dart';
import 'package:medexer/data/repositories/common_repository.dart';
import 'package:medexer/components/snackbars/custom_snackbar.dart';
import 'package:medexer/data/services/account/account_service.dart';
import 'package:medexer/components/buttons/custom_back_button.dart';
import 'package:medexer/data/infra_sdk/account/lib/account_sdk.dart';
import 'package:medexer/components/form/custom_form_text_field.dart';
import 'package:medexer/components/pickers/phone_country_picker.dart';
import 'package:medexer/components/buttons/custom_loading_button.dart';

class UpdateAccountPhoneNumberScreen extends StatefulWidget {
  const UpdateAccountPhoneNumberScreen({super.key});

  @override
  State<UpdateAccountPhoneNumberScreen> createState() =>
      _UpdateAccountPhoneNumberScreenState();
}

class _UpdateAccountPhoneNumberScreenState
    extends State<UpdateAccountPhoneNumberScreen> {
  bool hidePassword = true;
  RxBool isPhoneNumberValid = false.obs;

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void initializeControllersContent() async {
    await Future.delayed(const Duration(milliseconds: 300));

    setState(() {
      if (ServiceRegistry.userRepository.accountInfo.value.phone.isNotEmpty) {
        phoneController.text = ServiceRegistry
            .userRepository.accountInfo.value.phone
            .split('+234')[1];
      }
    });
  }

  @override
  void initState() {
    initializeControllersContent();

    super.initState();

    phoneController.addListener(() {
      if (phoneController.text.length == 10) {
        isPhoneNumberValid.value = true;
      } else {
        isPhoneNumberValid.value = false;
      }
    });
  }

  void handleSubmit() {
    if (passwordController.text.isEmpty) {
      return customErrorMessageSnackbar(
        title: 'Message',
        message: 'Account password is required.',
      );
    } else if (ServiceRegistry.commonRepository.userCountry.value.dialCode !=
        '+234') {
      return customErrorMessageSnackbar(
        title: 'Message',
        message: 'Invalid country code, only +234(NG) is supported.',
      );
    } else if (isPhoneNumberValid.isFalse) {
      return customErrorMessageSnackbar(
        title: 'Message',
        message: 'Phone number must be at least 10 digits',
      );
    } else if (!phoneController.text.isNumericOnly) {
      return customErrorMessageSnackbar(
        duration: 5500,
        title: 'Message',
        message:
            'Invalid phone number, ensure that your phone number comprises of digits only!',
      );
    } else {
      UpdateAccountPhoneDTO payload = UpdateAccountPhoneDTO(
        (instance) => instance
          ..password = passwordController.text.trim()
          ..newPhone = formatPhoneNumber(
            ServiceRegistry.commonRepository.userCountry.value.dialCode!,
            phoneController.text.trim(),
          ),
      );

      ServiceRegistry.accountService.updateUserAccountPhoneNumberService(
        payload,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: const Row(
              children: [
                CustomBackButton(),
                SizedBox(width: AppSizes.horizontal_10),
                TitleText(
                  size: 20,
                  title: 'Phone number',
                  weight: FontWeight.w700,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSizes.vertical_20),
              FormPhoneField(phoneController: phoneController),
              const SizedBox(height: AppSizes.vertical_10),
              FormPasswordField(
                showSuffixIcon: true,
                label: 'Password',
                hintText: 'enter account password',
                hidePassword: hidePassword,
                passwordController: passwordController,
              ),
              const SizedBox(height: AppSizes.vertical_20),
              Obx(
                () {
                  return ServiceRegistry
                          .accountService.isUpdateAccountInfoProcessing.isTrue
                      ? const CustomLoadingButton(height: 56)
                      : CustomButton(
                          text: 'Update phone number',
                          width: double.maxFinite,
                          height: 56,
                          fontSize: 16,
                          borderRadius: 16,
                          onTapHandler: handleSubmit,
                          fontWeight: FontWeight.w600,
                          fontColor: AppColors.whiteColor,
                          backgroundColor: (isPhoneNumberValid.isFalse)
                              ? AppColors.buttonPrimaryDisabledColor
                              : AppColors.buttonPrimaryColor,
                        );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
