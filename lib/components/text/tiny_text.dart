import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/custom_text_widget.dart';

class TinyText extends CustomTextWidget {
  TinyText({
    super.key,
    Color? color,
    FontWeight? weight,
    required String text,
  }) : super(
          size: 10,
          text: text,
          weight: weight ?? FontWeight.w400,
          textStyleName: AppTextSizes.bodyText1,
          color: color ?? AppColors.blackColor,
        );
}
