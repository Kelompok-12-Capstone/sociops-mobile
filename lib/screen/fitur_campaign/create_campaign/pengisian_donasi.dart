import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:giff_dialog/giff_dialog.dart';
import 'package:sociops/screen/fitur_campaign/componen/button_style.dart';
import 'package:sociops/screen/fitur_campaign/componen/teks_form_field.dart';
import 'package:sociops/screen/fitur_campaign/create_campaign/pengajuan_donasi.dart';
import 'package:sociops/screen/fitur_campaign/models/buatVolunteer_models.dart';
import 'package:sociops/service/donasi_service.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class PengisianDonasiScreen extends StatefulWidget {
  const PengisianDonasiScreen({Key? key}) : super(key: key);

  @override
  State<PengisianDonasiScreen> createState() => _PengisianDonasiScreenState();
}

class _PengisianDonasiScreenState extends State<PengisianDonasiScreen> {
  CampaignModel? campaignModel;
  bool _switchValue = false;
  String selectedCategory = '';
  bool isObscureText = true;
  SizedBox tinggi = const SizedBox(height: 12);
  FilePickerResult? result;
  String? _fileName;
  PlatformFile? pickedfile;
  File? fileToDisplay;

  void pickFile() async {
    try {
      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );
      if (result != null) {
        _fileName = result!.files.first.name;
        pickedfile = result!.files.first;
        fileToDisplay = File(pickedfile!.path.toString());

        print('File name $_fileName');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Donasi",
            style: FontFamily()
                .mediumteks
                .copyWith(fontSize: 24, fontWeight: FontWeight.w600)),
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
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Text('Penerima Donasi',
                          style: FontFamily().mediumteks),
                    ),
                    TeksFormField(hinText: "Tulis Penerima Donasi"),
                    Padding(
                      padding: const EdgeInsets.only(top: 26, bottom: 20),
                      child: Text('Proposal Donasi',
                          style: FontFamily().mediumteks),
                    ),
                    Container(
                      width: 390, // atur lebar kontainer sesuai kebutuhan
                      height: 54, // atur tinggi kontainer sesuai kebutuhan
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorStyle().primaryblue),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              "Upload Proposal Donasi",
                              style: FontFamily().mediumteks.copyWith(
                                  fontSize: 14,
                                  color: ColorStyle().primaryblue),
                            ),
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () async {
                                  pickFile();
                                },
                                icon: Icon(
                                  Icons.cloud_upload_outlined,
                                  color: ColorStyle().primaryblue,
                                ),
                              ),
                            ],
                          ),
                          if (pickedfile != null)
                            SizedBox(
                              height: 300,
                              width: 100,
                              child: Image.file(fileToDisplay!),
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
                            border: InputBorder.none,
                            hintText: '  Tambah Aksi'),
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
                              child: Image.asset("assets/sepatu.png"),
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
                            onOkButtonPressed: () async {
                              CampaignModel? result =
                                  await DonasiServices.createUser(
                                "[DATA TEST] Inovasi untuk Masa Depan: Mendukung Riset dan Teknologi",
                                12,
                                "[DATA TEST] Kami berkomitmen untuk mendukung riset dan teknologi sebagai sumber inovasi untuk masa depan. Kami memfasilitasi pengembangan penelitian, pembiayaan startup teknologi, dan kolaborasi antara ilmuwan, insinyur, dan komunitas teknologi untuk menciptakan solusi berkelanjutan.",
                                "[DATA TEST] Kisah kami dimulai ketika kami melihat potensi besar dalam riset dan teknologi untuk mengatasi masalah global. Kami merasa terpanggil untuk menyediakan platform dan sumber daya bagi ilmuwan, insinyur, dan komunitas teknologi untuk berkolaborasi, berinovasi, dan mewujudkan solusi yang berkelanjutan.",
                                "XXX",
                                "XXX",
                                "XXX",
                                "[DATA TEST] #InovasiMasaDepan",
                                "[DATA TEST] Riset dan teknologi inovatif",
                                "[DATA TEST] Silicon Valley, Amerika Serikat",
                                "2023-10-14T14:56:18.732Z",
                                "2023-12-14T14:56:18.732Z",
                                10000000,
                                50000,
                                "[DATA TEST] Setiap donasi akan digunakan untuk mendukung riset inovatif, pembiayaan startup teknologi, dan program kolaborasi di bidang riset dan teknologi.",
                                "FUNDRAISING",
                                "",
                              );
                              if (result != null) {
                                setState(() {
                                  campaignModel = result;
                                });
                              }
                              // ignore: use_build_context_synchronously
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
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
