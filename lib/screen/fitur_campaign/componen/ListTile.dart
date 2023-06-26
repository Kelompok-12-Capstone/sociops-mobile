import 'package:flutter/material.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';


// ignore: must_be_immutable
class ListileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Color color;
  Decoration? decorationbox;
   ListileWidget(
      {Key? key,
      required this.color,
      required this.title,
      this.decorationbox,
      required this.subtitle,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top :12.0, bottom: 12.0),
      child: Container(
        width: 396,
        height: 82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(
            color: color
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(
            leading:
                CircleAvatar(radius: 30, backgroundImage: AssetImage(image)),
            title: Text(
              title,
              style: FontFamily()
                  .mediumteks
                  .copyWith(fontSize: 14, color: ColorStyle().primaryblue),
            ),
            subtitle: Text(
              subtitle,
              style: FontFamily()
                  .reguler
                  .copyWith(fontSize: 14, color: ColorStyle().primarydark),
            ),
          ),
        ),
      ),
    );
  }
}
