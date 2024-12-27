import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/components/text/subtitle_text.dart';
import 'package:medexer/components/text/form_label_text.dart';

class CustomDatePicker extends StatefulWidget {
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final void Function(DateTime)? onDateSelected;
  final String? labelText;
  final String? hintText;

  const CustomDatePicker({
    Key? key,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.onDateSelected,
    this.labelText = '-',
    this.hintText = 'DD/MM/YYYY',
  }) : super(key: key);

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
    if (_selectedDate != null) {
      _dateController.text = DateFormat('dd/MM/yyyy').format(_selectedDate!);
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime now = DateTime.now();

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? widget.initialDate ?? now,
      firstDate: widget.firstDate ?? DateTime(1990),
      lastDate: widget.lastDate ?? DateTime.now(),
      keyboardType: TextInputType.none,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            textTheme: TextTheme(
              headlineMedium: TextStyle(
                fontSize: 24,
                letterSpacing: -1,
                fontFamily: 'Gotham',
                fontWeight: FontWeight.bold,
                color: AppColors.blackColor,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('dd/MM/yyyy').format(picked);
      });
      widget.onDateSelected?.call(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormLabelText(
            text: widget.labelText!,
            size: 16,
          ),
          const SizedBox(height: AppSizes.vertical_3),
          InkWell(
            onTap: () => _selectDate(context),
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
            child: Container(
              height: 48,
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.grayLightColor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SubtitleText(
                    text: _dateController.text.isEmpty
                        ? '-'
                        : _dateController.text,
                    color: _dateController.text.isEmpty
                        ? AppColors.grayLightColor
                        : AppColors.blackColor,
                  ),
                  const SizedBox(width: AppSizes.horizontal_10),
                  Image.asset(
                    'assets/icons/icon_calendar.png',
                    width: 20,
                    color: AppColors.grayLightColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    // TextField(
    //   controller: _dateController,
    //   decoration: InputDecoration(
    //     labelText: widget.labelText,
    //     hintText: widget.hintText,
    //     border: const OutlineInputBorder(
    //       borderSide: BorderSide(
    //         color: AppColors.redColor,
    //       ),
    //     ),
    //     suffixIcon: IconButton(
    //       icon: const Icon(Icons.calendar_today),
    //       onPressed: () => _selectDate(context),
    //     ),
    //   ),
    //   readOnly: true,
    //   onTap: () => _selectDate(context),
    // );
  }
}
