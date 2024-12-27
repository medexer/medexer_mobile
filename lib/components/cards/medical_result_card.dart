import 'package:flutter/material.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/constants/sizes.dart';

class MedicalResultCard extends StatelessWidget {
  final String title;
  final String result;
  const MedicalResultCard(
      {super.key, required this.title, required this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.maxFinite,
      margin: const EdgeInsets.only(
        bottom: AppSizes.vertical_10,
      ),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        border: Border(
          bottom: BorderSide(
            color: AppColors.borderSecondaryColor,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleText(
            size: 16,
            title: title,
          ),
          Row(
            children: [
              SubtitleText(
                text: 'Result - ',
              ),
              SubtitleText(
                text: result,
                weight: FontWeight.w500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
