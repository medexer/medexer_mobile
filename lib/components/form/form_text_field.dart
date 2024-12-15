import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/form_label_text.dart';
import 'package:medexer/components/form/custom_form_text_field.dart';

class FormTextField extends StatelessWidget {
  final double? width;
  final String label;
  final String hintText;
  final double labelSize;
  final TextEditingController textController;
  const FormTextField({
    super.key,
    this.width,
    required this.label,
    required this.hintText,
    this.labelSize = 16,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormLabelText(
            text: label,
            size: labelSize,
          ),
          const SizedBox(height: AppSizes.vertical_3),
          CustomFormTextField(
            hintText: hintText,
            controller: textController,
            maxLines: 1,
            height: 48,
            paddingTop: -3,
            borderRadius: 8,
            textColor: AppColors.primaryTextColor,
            hintColor: AppColors.grayColor.withOpacity(0.3),
            borderColor: AppColors.grayLightColor,
          ),
        ],
      ),
    );
  }
}
