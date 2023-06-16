import 'package:flutter/material.dart';
import 'package:giff_dialog/giff_dialog.dart';
import 'package:sociops/screen/fitur_campaign/componen/button_style.dart';
import 'package:sociops/screen/fitur_campaign/componen/image_collection.dart';
import 'package:sociops/screen/fitur_campaign/componen/teks_form_field.dart';
import 'package:sociops/screen/fitur_campaign/create_campaign/pengajuan_donasi.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class PengisianDonasiScreen extends StatefulWidget {
  const PengisianDonasiScreen({Key? key}) : super(key: key);

  @override
  State<PengisianDonasiScreen> createState() => _PengisianDonasiScreenState();
}

class _PengisianDonasiScreenState extends State<PengisianDonasiScreen> {
  bool _switchValue = false;
  String selectedCategory = '';
  bool isObscureText = true;
  SizedBox tinggi = const SizedBox(height: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Donasi",
            style: FontFamily()
                .mediumteks
                .copyWith(fontSize: 24, fontWeight: FontWeight.w600)),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: const BackButton(
          color: Color(0XFF444CE7),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child:
                        Text('Penerima Donasi', style: FontFamily().mediumteks),
                  ),
                  TeksFormField(hinText: "Tulis Penerima Donasi"),
                  Padding(
                    padding: const EdgeInsets.only(top: 26, bottom: 20),
                    child:
                        Text('Proposal Donasi', style: FontFamily().mediumteks),
                  ),
                  Container(
                    width: 396, // atur lebar kontainer sesuai kebutuhan
                    height: 54, // atur tinggi kontainer sesuai kebutuhan
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorStyle().primaryblue),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "    Upload Proposal Donasi",
                          style: FontFamily().mediumteks.copyWith(
                              fontSize: 14, color: ColorStyle().primaryblue),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.cloud_upload_outlined,
                            color: ColorStyle().primaryblue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: 396, // atur lebar kontainer sesuai kebutuhan
                    height: 54, // atur tinggi kontainer sesuai kebutuhan
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorStyle().primaryblue),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "    Donasi dengan Aksi",
                          style: FontFamily().mediumteks.copyWith(
                              fontSize: 14, color: ColorStyle().primaryblue),
                        ),
                        Switch(
                          value: _switchValue,
                          onChanged: (value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26, bottom: 20),
                    child: Text('Cara melakukan Aksi',
                        style: FontFamily().mediumteks),
                  ),
                  Container(
                    height: 164,
                    width: 396,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: ColorStyle().primaryblue),
                    ),
                    child: const TextField(
                      // controller: controler,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: '  Tambah Aksi'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26, bottom: 20),
                    child: Text('Tuliskan jumlah donasi berdasrkan aksi',
                        style: FontFamily().mediumteks),
                  ),
                  TeksFormField(
                    hinText: "Tulis Nominal Donasi",
                  ),
                  ButtonPrimay(
                    teks: "Selanjutnya",
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) => NetworkGiffDialog(
                                image: Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: Image.asset(ImageCollection.sepatu),
                                ),
                                title: Text('Kirim pengajuan Campaign?',
                                    textAlign: TextAlign.center,
                                    style: FontFamily()
                                        .mediumteks
                                        .copyWith(fontSize: 24)),
                                description: Text(
                                    'Pastikan semua data yang Anda masukkan sudah benar',
                                    textAlign: TextAlign.center,
                                    style: FontFamily()
                                        .reguler
                                        .copyWith(fontSize: 14)),
                                buttonOkColor: ColorStyle().primaryblue,
                                buttonCancelColor: ColorStyle().disable,
                                onOkButtonPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          (const PengajuanDonasiScreen()),
                                    ),
                                  );
                                },
                                onCancelButtonPressed: () =>
                                    Navigator.of(context).pop(),
                              ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
