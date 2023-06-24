import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_campaign/componen/image_collection.dart';
import 'package:sociops/screen/fitur_campaign/componen/list_tile.dart';
import 'package:sociops/screen/fitur_campaign/componen/tag_status.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class DetailDonasiScreen extends StatefulWidget {
  const DetailDonasiScreen({Key? key}) : super(key: key);

  @override
  State<DetailDonasiScreen> createState() => _DetailDonasiScreenState();
}

class _DetailDonasiScreenState extends State<DetailDonasiScreen> {
  double _progressValue = 0.0;

  void simulateProgress() {
    setState(() {
      _progressValue = 0.0;
    });

    // Simulate progress update
  }

  bool isObscureText = true;
  SizedBox tinggi = const SizedBox(height: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Donasi",
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
                    child: SizedBox(
                      width: 396.0,
                      height: 224.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          ImageCollection.sepatu,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26, bottom: 20),
                    child: Text(
                        '#JustDoIt, Lakukan Olahraga dengan Nyaman Bersama Kami',
                        style: FontFamily().mediumteks),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rp13.000.000", style: FontFamily().reguler),
                      Text(
                        '${(_progressValue * 100).toInt()}%',
                        style: TextStyle(color: ColorStyle().red),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  LinearProgressIndicator(
                    value: _progressValue,
                    minHeight: 10,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(ColorStyle().red),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 32),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedTag(teks: "Umum"),
                          SizedBox(width: 12),
                          OutlineTag(
                            teks: "Indonesi(Online)",
                            icon: Icons.location_on_outlined,
                          ),
                          SizedBox(width: 12),
                          OutlineTag(
                            teks: "1 aksi = Rp.10.000",
                            icon: Icons.location_on_outlined,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
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
                            ),
                      ),
                    ),
                  ),
                  ListileWidget(
                      color: ColorStyle().disablebutton,
                      title: "Thiyara Al-Mawaddah",
                      subtitle: "Softwere Engineer",
                      image: ImageCollection.profile),
                  Padding(
                    padding: const EdgeInsets.only(top: 26, bottom: 20),
                    child:
                        Text('Vidio Promosi', style: FontFamily().mediumteks),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 396.0,
                          height: 224.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              ImageCollection.sepatu,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            "Proin et euismod diam. Duis fermentum felis nisi, ut lobortis lectus mollis non. Integer pellentesque erat eu diam pharetra auctor id et nulla. Nam sodales arcu nec blandit fringilla. Ut vitae ligula vel lectus ultrices tempus ut id sem. Etiam egestas lacus scelerisque augue congue, sed rutrum sem lobortis. Pellentesque vel enim ante. Quisque hendrerit lobortis neque, ac tempor dui elementum vel. Duis ",
                            style: FontFamily().light,
                          ),
                        )
                      ],
                    ),
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
