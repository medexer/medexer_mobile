import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/components/form/form_password_field.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/buttons/custom_button.dart';
import 'package:medexer/data/repositories/user_repository.dart';
import 'package:medexer/components/text/custom_text_widget.dart';
import 'package:medexer/data/repositories/common_repository.dart';
import 'package:medexer/components/snackbars/custom_snackbar.dart';
import 'package:medexer/components/buttons/custom_back_button.dart';
import 'package:medexer/data/services/account/account_service.dart';
import 'package:medexer/components/modals/delete_account_confirmation_modal.dart';
import 'package:medexer/components/buttons/custom_loading_button.dart';
import 'package:medexer/components/form/custom_form_password_field.dart';
import 'package:medexer/components/text/title_text.dart';

AccountService accountService = Get.find<AccountService>();
UserRepository userRepository = Get.find<UserRepository>();
CommonRepository commonRepository = Get.find<CommonRepository>();

class DeleteAccountScreen extends StatefulWidget {
  const DeleteAccountScreen({super.key});

  @override
  State<DeleteAccountScreen> createState() => _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends State<DeleteAccountScreen> {
  bool hidePassword = true;
  RxBool isPassword = false.obs;
  RxBool showPassword = true.obs;

  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    passwordController.addListener(() {
      if (passwordController.text.isNotEmpty) {
        isPassword.value = true;
      } else {
        isPassword.value = false;
      }
    });
  }

  void handleSubmit() {
    if (passwordController.text.isEmpty) {
      return customErrorMessageSnackbar(
        title: 'Message',
        message: 'Password is required!',
      );
    } else {
      showDialog(
        context: context,
        barrierColor: AppColors.blackColor.withOpacity(0.8),
        builder: (BuildContext context) {
          return DeleteAccountConfirmationModal(
            password: passwordController.text.trim(),
          );
        },
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
                // SizedBox(width: AppSizes.horizontal_10),
                // TitleText(
                //   size: 20,
                //   title: 'Delete account',
                //   weight: FontWeight.w700,
                // ),
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
              const TitleText(
                size: 20,
                title: 'Delete account',
              ),
              SubtitleText(
                color: AppColors.textTertiaryColor,
                text:
                    'Enter your current password to delete your account and data.',
              ),
              const SizedBox(height: AppSizes.vertical_50),
              FormPasswordField(
                label: 'Password',
                showSuffixIcon: true,
                hintText: 'enter password',
                hidePassword: hidePassword,
                passwordController: passwordController,
              ),
              const SizedBox(height: AppSizes.vertical_20),
              Obx(
                () {
                  return accountService.isUpdateAccountInfoProcessing.isTrue
                      ? const CustomLoadingButton(height: 56)
                      : CustomButton(
                          text: 'Delete account',
                          width: double.maxFinite,
                          height: 56,
                          fontSize: 16,
                          borderRadius: 16,
                          onTapHandler: handleSubmit,
                          fontWeight: FontWeight.w600,
                          fontColor: AppColors.whiteColor,
                          backgroundColor: (isPassword.isFalse)
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
