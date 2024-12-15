// ignore_for_file: must_be_immutable
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/body_text.dart';
import 'package:medexer/core/models/user_country_model.dart';
import 'package:medexer/core/utilities/index.dart';
import 'package:medexer/data/repositories/common_repository.dart';
import 'package:medexer/presentation/public/select_country_screen.dart';

CommonRepository commonRepository = Get.find<CommonRepository>();

class PhoneCountryPicker extends StatefulWidget {
  final double height;
  final Color? borderColor;
  final double borderRadius;
  const PhoneCountryPicker({
    super.key,
    this.height = 50,
    this.borderColor,
    required this.borderRadius,
  });

  @override
  State<PhoneCountryPicker> createState() => _PhoneCountryPickerState();
}

class _PhoneCountryPickerState extends State<PhoneCountryPicker> {
  void onSelectCountry(String dialCode) {
    int index = platformCountries
        .indexWhere((country) => country['dialCode'] == dialCode);

    if (index != -1) {
      commonRepository.userCountry.value = UserCountryModel(
        name: platformCountries[index]['name'],
        dialCode: platformCountries[index]['dialCode'],
        flagEmoji: platformCountries[index]['flagEmoji'],
      );
    }

    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.toNamed(AppRoutes.selectCountryRoute);
        Get.to(
          () => SelectCountryScreen(
            onSelectHandler: onSelectCountry,
            currentDialCode: commonRepository.userCountry.value.dialCode!,
          ),
        );
      },
      child: Container(
        height: widget.height,
        width: AppSizes.screenWidth(context) * 0.22,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.horizontal_5,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.borderColor ?? AppColors.borderPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () {
                return BodyText(
                  text:
                      '${commonRepository.userCountry.value.flagEmoji} ${commonRepository.userCountry.value.dialCode!}',
                );
              },
            ),
            const Icon(
              LucideIcons.chevronDown,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}
