import 'package:flutter/material.dart';
import 'package:medexer/components/form/custom_form_description_field.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/form_label_text.dart';
import 'package:medexer/components/form/custom_form_text_field.dart';

class FormDescriptionField extends StatelessWidget {
  final double? width;
  final String label;
  final String hintText;
  final double labelSize;
  final TextEditingController textController;
  const FormDescriptionField({
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
          CustomFormDescriptionField(
            hintText: hintText,
            controller: textController,
            maxLines: null,
            maxLength: 250,
            minHeight: 48,
            fontSize: 14,
            borderRadius: 8,
            width: double.maxFinite,
            keyboardType: TextInputType.multiline,
            textColor: AppColors.primaryTextColor,
            borderColor: AppColors.borderSecondaryColor,
            hintColor: AppColors.grayColor.withOpacity(0.3),
          ),
        ],
      ),
    );
  }
}
