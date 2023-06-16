import 'package:flutter/material.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class OutlineTag extends StatelessWidget {
  final String teks;
  final IconData? icon;
  const OutlineTag({Key? key, required this.teks, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: ColorStyle().primaryblue,
          width: 2.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: ColorStyle().primaryblue,
          ),
          Text(
            teks,
            textAlign: TextAlign.center,
            style: FontFamily()
                .mediumteks
                .copyWith(color: ColorStyle().primaryblue, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class ElevatedTag extends StatelessWidget {
  final String teks;
  const ElevatedTag({Key? key, required this.teks,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: ColorStyle().disablebutton,
      ),
      child: Center(
        child: Text(
          teks,
          textAlign: TextAlign.center,
          style: FontFamily()
              .mediumteks
              .copyWith(color: ColorStyle().primaryblue, fontSize: 12),
        ),
      ),
    );
  }
}
