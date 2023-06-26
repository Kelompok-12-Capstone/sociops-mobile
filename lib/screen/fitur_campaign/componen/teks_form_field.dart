import 'package:flutter/material.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

// ignore: must_be_immutable
class TeksFormField extends StatelessWidget {
  double? height;
  double? width;
  final String hinText;
  Decoration? decoration;

  TeksFormField(
      {Key? key,
      required this.hinText,
      this.height,
      this.width,
      this.decoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 396,
      decoration: decoration,
      child: TextField(
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
              borderSide: BorderSide(color: ColorStyle().primaryblue),
            ),
            hintText: hinText),
      ),
    );
  }
}

// ignore: must_be_immutable
class IconButtonFormField extends StatelessWidget {
  final String teks;
  final IconData icon;
  Function()? onpressed;
  IconButtonFormField(
      {Key? key, required this.teks, required this.icon, this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 396, // atur lebar kontainer sesuai kebutuhan
        height: 54, // atur tinggi kontainer sesuai kebutuhan
        decoration: BoxDecoration(
          border: Border.all(color: ColorStyle().primaryblue),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                teks,
                style: FontFamily()
                    .mediumteks
                    .copyWith(fontSize: 14, color: ColorStyle().primaryblue),
              ),
              IconButton(
                onPressed: onpressed,
                icon: Icon(
                  icon,
                  color: ColorStyle().primaryblue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
