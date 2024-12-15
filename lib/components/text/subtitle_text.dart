import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/custom_text_widget.dart';

class SubtitleText extends CustomTextWidget {
  SubtitleText({
    super.key,
    Color? color,
    int? maxLines,
    double? lineHeight,
    FontWeight? weight,
    required String text,
    TextAlign? alignment,
    Color? decorationColor,
    TextDecoration? decoration,
  }) : super(
          size: 16,
          text: text,
          lineHeight: lineHeight,
          maxLines: maxLines ?? 6,
          weight: weight ?? FontWeight.w400,
          textStyleName: AppTextSizes.bodyText1,
          alignment: alignment ?? TextAlign.left,
          color: color ?? AppColors.blackColor,
          decoration: decoration ?? TextDecoration.none,
          decorationColor: decorationColor ?? Colors.transparent,
        );
}
