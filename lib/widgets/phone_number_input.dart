import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:login_teast_new/constants/app_colors.dart';

class PhoneNumberInput extends StatefulWidget {
  final Function(bool) setPhoneNumberValidity;

  PhoneNumberInput({required this.setPhoneNumberValidity});

  @override
  _PhoneNumberInputState createState() => _PhoneNumberInputState();
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
  PhoneNumber? phoneNumber;
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: InternationalPhoneNumberInput(
          onInputChanged: (PhoneNumber number) {
            final String input = number.phoneNumber ?? '';

            print('Input: $input');

            final isValidLength = input.replaceAll(' ', '').length > 11;

            if (isValidLength) {
              setState(() {
                phoneNumber = number;
                isValid = true;
                widget.setPhoneNumberValidity(isValid);
              });
            } else {
              setState(() {
                phoneNumber = null;
                isValid = false;
                widget.setPhoneNumberValidity(isValid);
              });
            }
          },
          selectorConfig: SelectorConfig(
            selectorType: PhoneInputSelectorType.DIALOG,
            showFlags: true,
          ),
          inputDecoration: InputDecoration(
            hintText: 'XXXXXXXXX',
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.columnColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.columnColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.columnColor),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.columnColor),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.columnColor),
            ),
            fillColor: AppColors.columnColor,
          ),
          initialValue: null,
          formatInput: false,
          keyboardType: TextInputType.number,
          onInputValidated: (bool value) {
            setState(() {
              isValid = value;
              widget.setPhoneNumberValidity(isValid);
            });
          },
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.columnColor),
          ),
          selectorTextStyle: TextStyle(color: Colors.black),
          searchBoxDecoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.grey),
          ),
          countries: ['ID'],
        ),
      ),
    );
  }
}
