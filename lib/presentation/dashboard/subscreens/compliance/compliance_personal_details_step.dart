import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:medexer/components/buttons/labeled_dropdown_selector.dart';
import 'package:medexer/components/date/custom_date_picker.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/utilities/index.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/body_text.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/components/buttons/custom_dropdown_button.dart';

// class CompliancePersonalDetailsStep extends StatefulWidget {
//   const CompliancePersonalDetailsStep({super.key});

//   @override
//   State<CompliancePersonalDetailsStep> createState() =>
//       _CompliancePersonalDetailsStepState();
// }

// class _CompliancePersonalDetailsStepState
//     extends State<CompliancePersonalDetailsStep> {
//   String tattoos = '';
//   String genotype = '';
//   String bloodGroup = '';
//   bool donatedBlood = false;

// }

class CompliancePersonalDetailsStep extends StatelessWidget {
  final bool donatedBlood;
  final Function(String, String) onChangeHandler;
  const CompliancePersonalDetailsStep({
    super.key,
    this.donatedBlood = false,
    required this.onChangeHandler,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabeledDropdownSelector(
            label: 'What is your blood group?',
            sublabel: 'e.g O+, O-, B, AB',
            items: bloodGroups,
            onChanged: (value) {
              log('[BLOOD-GROUP] : $value');

              onChangeHandler('blood_group', value.toString());
            },
          ),
          const SizedBox(height: AppSizes.vertical_15),
          LabeledDropdownSelector(
            label: 'What is your genotype?',
            sublabel: 'e.g AA, AS, SS',
            items: genoTypes,
            onChanged: (value) {
              log('[GENOTYPE] : $value');

              onChangeHandler('genotype', value.toString());
            },
          ),
          const SizedBox(height: AppSizes.vertical_15),
          LabeledDropdownSelector(
            label: 'Have you ever donated blood?',
            items: defaultBooleanOptions,
            onChanged: (value) {
              log('[DONATED-BLOOD] : $value');

              // setState(() {
              //   donatedBlood = value == 'Yes' ? true : false;
              // });
              onChangeHandler('donated_blood', value.toString());
            },
          ),
          Visibility(
            visible: donatedBlood,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSizes.vertical_15),
                CustomDatePicker(
                  labelText: 'If yes, when was the last time?',
                  onDateSelected: (date) {
                    log('[DONATION-DATE] : $date');

                    onChangeHandler('last_donation_date', date.toString());
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSizes.vertical_15),
          LabeledDropdownSelector(
            label: 'Do you have any tattoos?',
            items: defaultBooleanOptions,
            onChanged: (value) {
              log('[TATTOOS] : $value');

              onChangeHandler('has_tattoos', value.toString());
            },
          ),
          const SizedBox(height: AppSizes.vertical_50),
        ],
      ),
    );
  }
}
