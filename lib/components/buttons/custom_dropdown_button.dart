import 'package:flutter/material.dart';
import 'package:medexer/components/text/body_text.dart';
import 'package:medexer/core/constants/colors.dart';

class CustomDropdownButton extends StatefulWidget {
  final void Function(String?)? onChanged;
  final List<String> dropDownItems;

  const CustomDropdownButton({
    Key? key,
    this.onChanged,
    required this.dropDownItems,
  }) : super(key: key);

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? selectedItem;

  @override
  void initState() {
    super.initState();
    // selectedBloodGroup = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.grayLightColor,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          icon: Image.asset(
            'assets/icons/icon_dropdown.png',
            width: 20,
          ),
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            color: AppColors.blackColor,
          ),
          isExpanded: true,
          value: selectedItem,
          hint: BodyText(
            text: '-',
            color: AppColors.grayLightColor,
          ),
          items: widget.dropDownItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedItem = newValue;
            });

            if (widget.onChanged != null) {
              widget.onChanged!(newValue);
            }
          },
        ),
      ),
    );
  }
}
