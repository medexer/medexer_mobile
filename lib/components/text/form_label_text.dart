import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/components/text/custom_text_widget.dart';

class FormLabelText extends CustomTextWidget {
  FormLabelText({
    super.key,
    double size = 16,
    required String text,
  }) : super(
          size: size,
          text: text,
          weight: FontWeight.w400,
          textStyleName: AppTextSizes.bodyText1,
        );
}
