import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/custom_text_widget.dart';

class SmallText extends CustomTextWidget {
  SmallText({
    super.key,
    Color? color,
    double? size,
    FontWeight? weight,
    required String text,
  }) : super(
          size: size ?? 12,
          text: text,
          weight: weight ?? FontWeight.w400,
          textStyleName: AppTextSizes.bodyText1,
          color: color ?? AppColors.blackColor,
        );
}
