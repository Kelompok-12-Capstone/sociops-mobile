import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';


// ignore: must_be_immutable
class ButtonPrimay extends StatelessWidget {
  final String teks;
  Function() onPressed;
  ButtonPrimay({Key? key, required this.teks, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 396,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(36),
                ),
              ),
              backgroundColor: ColorStyle().primaryblue // warna teks
              ),
          onPressed: onPressed,
          child: Text(
            teks,
            style: FontFamily().mediumteks.copyWith(color: ColorStyle().white),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ButtonSecondary extends StatelessWidget {
  final String teks;
  Function() onPressed;
  ButtonSecondary({Key? key, required this.teks, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 396,
        height: 60,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(36),
                ),
              ),
              side: BorderSide(color: ColorStyle().primaryblue) // warna teks
              ),
          onPressed: onPressed,
          child: Text(
            teks,
            style: FontFamily()
                .mediumteks
                .copyWith(color: ColorStyle().primaryblue),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ButtonUploadMedia extends StatelessWidget {
  final String teks;
  final IconData icon;
  Function()? onpressed;
  ButtonUploadMedia(
      {Key? key, required this.teks, required this.icon, this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 169,
          width: 369,
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                       icon,
                        color: ColorStyle().primaryblue,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        teks,
                        style: FontFamily().mediumteks.copyWith(
                            color: ColorStyle().primaryblue, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
