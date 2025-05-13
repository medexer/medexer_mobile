import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/form/form_text_field.dart';
import 'package:medexer/components/form/form_phone_field.dart';
import 'package:medexer/components/buttons/custom_button.dart';
import 'package:medexer/components/badges/dexer_icon_badge.dart';
import 'package:medexer/components/snackbars/custom_snackbar.dart';
import 'package:medexer/components/buttons/custom_loading_button.dart';
import 'package:medexer/components/navigation/auth_redirect_link.dart';
import 'package:medexer/components/navigation/auth_bottom_navigation_banner.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool hidePassword = true;
  RxBool isEmailValid = false.obs;
  RxBool isPhoneNumberValid = false.obs;

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController referralCodeController = TextEditingController();

  void initializeEmailController() async {
    await Future.delayed(const Duration(milliseconds: 300));

    if (Get.parameters['email'] != null) {
      emailController.text = Get.parameters['email']!;
    }
  }

  @override
  void initState() {
    super.initState();

    initializeEmailController();

    phoneController.addListener(() {
      if (phoneController.text.length == 10) {
        isPhoneNumberValid.value = true;
      } else {
        isPhoneNumberValid.value = false;
      }
    });
    emailController.addListener(() {
      if (emailController.text.isEmail) {
        isEmailValid.value = true;
      } else {
        isEmailValid.value = false;
      }
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    lastNameController.dispose();
    firstNameController.dispose();
    referralCodeController.dispose();

    super.dispose();
  }

  void submitHandler() async {
    if (firstNameController.text.isEmpty) {
      return customErrorMessageSnackbar(
        title: 'Message',
        message: 'First name is required',
      );
    } else if (lastNameController.text.isEmpty) {
      return customErrorMessageSnackbar(
        title: 'Message',
        message: 'Last name is required',
      );
    } else if (emailController.text.isEmpty) {
      return customErrorMessageSnackbar(
        title: 'Message',
        message: 'Email is required',
      );
    } else if (!emailController.text.isEmail) {
      return customErrorMessageSnackbar(
        title: 'Message',
        message: 'Invalid email address',
      );
    } else if (phoneController.text.isNotEmpty &&
        commonRepository.userCountry.value.dialCode != '+234') {
      return customErrorMessageSnackbar(
        title: 'Message',
        message: 'Invalid country code, only +234(NG) is supported.',
      );
    } else if (phoneController.text.isNotEmpty && isPhoneNumberValid.isFalse) {
      return customErrorMessageSnackbar(
        title: 'Message',
        message: 'Phone number must be at least 10 digits',
      );
    } else if (phoneController.text.isNotEmpty &&
        !phoneController.text.isNumericOnly) {
      return customErrorMessageSnackbar(
        duration: 5500,
        title: 'Message',
        message:
            'Invalid phone number, ensure that your phone number comprises of digits only!',
      );
    } else {
      Map<String, dynamic> payload = {
        "phone": phoneController.text.isNotEmpty
            ? formatPhoneNumber(
                ServiceRegistry.commonRepository.userCountry.value.dialCode!,
                phoneController.text.trim(),
              )
            : '',
        "email": emailController.text.trim(),
        "firstName": firstNameController.text.trim(),
        "lastName": lastNameController.text.trim(),
        "referralCode": referralCodeController.text.isNotEmpty
            ? referralCodeController.text.trim()
            : "",
      };

      ServiceRegistry.authenticationService
          .checkEmailPhoneAvailabilityService(payload);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Obx(() {
          return SingleChildScrollView(
              child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.horizontal_15,
            ),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSizes.vertical_30),
                const DexerIconBadge(),
                const SizedBox(height: AppSizes.vertical_15),
                const TitleText(
                  size: 20,
                  title: "Let’s get to know you",
                ),
                const SizedBox(height: AppSizes.vertical_5),
                const AuthRedirectLink(routeType: 'LOGIN'),
                const SizedBox(height: AppSizes.vertical_20),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppSizes.screenWidth(context) * 0.45,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FormTextField(
                              label: 'First name',
                              hintText: 'Ibrahim',
                              textController: firstNameController,
                              width: AppSizes.screenWidth(context) * 0.7,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: AppSizes.screenWidth(context) * 0.45,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FormTextField(
                              label: 'Last name',
                              hintText: 'Gyang',
                              textController: lastNameController,
                              width: AppSizes.screenWidth(context) * 0.7,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSizes.vertical_10),
                FormTextField(
                  label: 'Email',
                  hintText: 'ibgyang@gmail.com',
                  textController: emailController,
                ),
                const SizedBox(height: AppSizes.vertical_10),
                FormPhoneField(
                  label: 'Phone number(optional)',
                  phoneController: phoneController,
                ),
                const SizedBox(height: AppSizes.vertical_10),
                FormTextField(
                  label: 'Referral Code(optional)',
                  textController: referralCodeController,
                  hintText: 'Enter referral code',
                ),
                const SizedBox(height: AppSizes.horizontal_30),
                ServiceRegistry.authenticationService.isSignUpProcessing.isTrue
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
                        backgroundColor: isEmailValid.isFalse
                            ? AppColors.buttonPrimaryDisabledColor
                            : AppColors.buttonPrimaryColor,
                      ),
              ],
            ),
          ));
        }),
      ),
      bottomNavigationBar: const AuthBottomNavigationBanner(),
    );
  }
}
