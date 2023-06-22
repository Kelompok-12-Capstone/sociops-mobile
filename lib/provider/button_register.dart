// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class ButtonRegister extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final Color? color;
  final bool isIcon;
  const ButtonRegister(
      {Key? key, this.onPressed, this.title, this.color, required this.isIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 396,
      height: 60,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            ColorStyle().primaryblue,
          ),
        ),

        onPressed: onPressed,
        // },
        child: Text(title!,
            style: FontFamily()
                .primary
                .copyWith(fontSize: 18, color: ColorStyle().white)),
      ),
    );
  }
}
