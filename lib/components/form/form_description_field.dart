import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/form_label_text.dart';
import 'package:medexer/components/form/custom_form_description_field.dart';

class FormDescriptionField extends StatefulWidget {
  final double? width;
  final int? maxLength;
  final String label;
  final String hintText;
  final double labelSize;
  final bool showCharacterCount;
  final TextEditingController textController;
  const FormDescriptionField({
    super.key,
    this.width,
    this.maxLength = 250,
    required this.label,
    this.showCharacterCount = false,
    required this.hintText,
    this.labelSize = 16,
    required this.textController,
  });

  @override
  State<FormDescriptionField> createState() => _FormDescriptionFieldState();
}

class _FormDescriptionFieldState extends State<FormDescriptionField> {
  @override
  void initState() {
    super.initState();
    widget.textController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    widget.textController.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormLabelText(
            text: widget.label,
            size: widget.labelSize,
          ),
          const SizedBox(height: AppSizes.vertical_3),
          CustomFormDescriptionField(
            hintText: widget.hintText,
            controller: widget.textController,
            maxLines: null,
            minHeight: 48,
            fontSize: 14,
            borderRadius: 8,
            width: double.maxFinite,
            maxLength: widget.maxLength,
            keyboardType: TextInputType.multiline,
            textColor: AppColors.primaryTextColor,
            borderColor: AppColors.borderSecondaryColor,
            hintColor: AppColors.grayColor.withOpacity(0.3),
          ),
          if (widget.showCharacterCount && widget.maxLength != null) ...[
            const SizedBox(height: AppSizes.vertical_4),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${widget.textController.text.length}/${widget.maxLength}',
                style: TextStyle(
                  color: AppColors.grayColor,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
