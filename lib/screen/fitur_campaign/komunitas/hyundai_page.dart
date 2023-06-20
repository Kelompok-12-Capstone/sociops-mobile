import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_campaign/componen/image_collection.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class HyundaiScreen extends StatefulWidget {
  const HyundaiScreen({Key? key}) : super(key: key);

  @override
  State<HyundaiScreen> createState() => _HyundaiScreenState();
}

class _HyundaiScreenState extends State<HyundaiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Campaign",
          style: FontFamily()
              .mediumteks
              .copyWith(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Color(0XFF444CE7),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: CircleAvatar(
                            radius: 100, // ukuran radius lingkaran
                            backgroundImage: AssetImage(
                                ImageCollection.hyundai), // path gambar Anda
                          ),
                        ),
                        Text(
                          "Hyundai",
                          style: FontFamily().mediumteks,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: Container(
                      width: 396,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: ColorStyle().orangedisable,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          textAlign: TextAlign.start,
                          'Campaign mu sedang di lihat',
                          style: FontFamily().mediumteks.copyWith(
                              color: ColorStyle().orange,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "About",
                    style: FontFamily().mediumteks,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                        "Proin et euismod diam. Duis fermentum felis nisi, ut lobortis lectus mollis non. Integer pellentesque erat eu diam pharetra auctor id et nulla. Nam sodales arcu nec blandit fringilla. Ut vitae ligula vel lectus ultrices tempus ut id sem. Etiam egestas lacus scelerisque augue congue, sed rutrum sem lobortis. Pellentesque vel enim ante. Quisque hendrerit lobortis neque, ac tempor dui elementum vel. Duis vitae ante imperdiet, lacinia nulla sit amet, hendrerit erat. In ac lectus vulputate, pellentesque est et, interdum augue. Nam in sodales augue, non pellentesque orci. Nullam aliquet ante ut dolor molestie venenatis. Aliquam a erat quis nulla congue porttitor sit amet id nulla. Fusce pretium diam quam, vel consequat nibh feugiat id. Aenean laoreet auctor sollicitudin. Donec at sagittis nulla, sit amet lacinia eros.",
                        style: FontFamily().reguler),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
