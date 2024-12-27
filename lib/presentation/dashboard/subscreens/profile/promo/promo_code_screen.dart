import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/form/form_text_field.dart';
import 'package:medexer/components/buttons/custom_button.dart';
import 'package:medexer/components/snackbars/custom_snackbar.dart';
import 'package:medexer/components/buttons/custom_back_button.dart';

class PromoCodeScreen extends StatefulWidget {
  const PromoCodeScreen({super.key});

  @override
  State<PromoCodeScreen> createState() => _PromoCodeScreenState();
}

class _PromoCodeScreenState extends State<PromoCodeScreen> {
  RxBool isPromoCodeValid = false.obs;

  TextEditingController promoCodeController = TextEditingController();

  @override
  void initState() {
    super.initState();

    promoCodeController.addListener(() {
      if (promoCodeController.text.length > 6) {
        isPromoCodeValid.value = true;
      } else {
        isPromoCodeValid.value = false;
      }
    });
  }

  void handleSubmit() {
    if (isPromoCodeValid.isFalse) {
      return customErrorMessageSnackbar(
        title: 'Message',
        message: 'Invalid promo code',
      );
    }
    return customErrorMessageSnackbar(
      title: 'Message',
      message: 'Coming soon!',
    );
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackButton(),
                TitleText(
                  letterSpacing: 0,
                  fontFamily: 'Roboto',
                  title: 'Promo code',
                ),
                SizedBox(),
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
              const SizedBox(height: AppSizes.vertical_5),
              FormTextField(
                label: 'Promo code',
                hintText: 'enter code',
                textController: promoCodeController,
              ),
              const SizedBox(height: AppSizes.vertical_20),
              Obx(
                () {
                  return CustomButton(
                    text: 'Continue',
                    width: double.maxFinite,
                    height: 56,
                    fontSize: 16,
                    borderRadius: 16,
                    onTapHandler: handleSubmit,
                    fontWeight: FontWeight.w600,
                    fontColor: AppColors.whiteColor,
                    backgroundColor: (isPromoCodeValid.isFalse)
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
