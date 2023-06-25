import 'package:flutter/material.dart';

Widget textFormRegistrasi({
  required String labelText,
  required String hintText,
  required String errorMessage,
  required bool isValidTextField,
  required Function(String)? onChanged,
  bool isObsucreText = false,
  Widget? prefixIcon,
  Widget? suffixIcon,
  TextEditingController? controller,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        width: 396,
        height: 72,
        child: TextFormField(
          controller: controller,
          onChanged: onChanged,
          obscureText: isObsucreText,
          decoration: InputDecoration(
            label: Text(labelText),
            filled: true,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.only(left: 16),
            hintText: hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      if (!isValidTextField)
        Text(
          errorMessage,
          style: const TextStyle(
            color: Colors.red,
            fontSize: 12,
          ),
        ),
    ],
  );
}

