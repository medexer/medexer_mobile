import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/custom_text_widget.dart';

class TitleText extends StatelessWidget {
  final String title;
  final double? size;
  final Color? color;
  final String? fontFamily;
  final FontWeight? weight;
  final double? letterSpacing;
  final TextAlign? alignment;
  const TitleText(
      {super.key,
      this.size = 16,
      this.letterSpacing = -1,
      this.fontFamily = 'Gotham',
      this.weight = FontWeight.w500,
      this.alignment = TextAlign.left,
      this.color = AppColors.blackColor,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return CustomTextWidget(
      size: size,
      text: title,
      color: color,
      weight: weight,
      alignment: alignment,
      fontFamily: fontFamily,
      letterSpacing: letterSpacing,
      textStyleName: AppTextSizes.title3,
    );
  }
}
