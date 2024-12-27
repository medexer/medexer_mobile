import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/body_text.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/components/buttons/custom_dropdown_button.dart';

class LabeledDropdownSelector extends StatelessWidget {
  final String label;
  final String? sublabel;
  final List<String> items;
  final Function(String?) onChanged;

  const LabeledDropdownSelector({
    super.key,
    required this.label,
    this.sublabel,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubtitleText(
          weight: FontWeight.w500,
          text: label,
        ),
        if (sublabel != null)
          BodyText(
            text: sublabel!,
            color: AppColors.textTertiaryColor,
          ),
        const SizedBox(height: AppSizes.vertical_10),
        CustomDropdownButton(
          dropDownItems: items,
          onChanged: onChanged,
        ),
      ],
    );
  }
}