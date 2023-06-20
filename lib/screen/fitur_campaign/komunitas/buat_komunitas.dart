import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_campaign/componen/button_style.dart';
import 'package:sociops/screen/fitur_campaign/componen/teks_form_field.dart';
import 'package:sociops/screen/fitur_campaign/komunitas/Pengajuan_komunitas.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class BuatKomunitasScreen extends StatefulWidget {
  const BuatKomunitasScreen({Key? key}) : super(key: key);

  @override
  State<BuatKomunitasScreen> createState() => _BuatKomunitasScreenState();
}

class _BuatKomunitasScreenState extends State<BuatKomunitasScreen> {
  String selectedCategory = '';
  bool isObscureText = true;
  SizedBox tinggi = const SizedBox(height: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Buat Komunitas",
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
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child:
                        Text('Upload Sampul', style: FontFamily().mediumteks),
                  ),
                  Align(
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
                              padding: const EdgeInsets.fromLTRB(
                                  16.0, 12.0, 16.0, 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.image_outlined,
                                    color: ColorStyle().primaryblue,
                                  ),
                                  const SizedBox(height: 8.0),
                                  Text(
                                    'Tambahkan Foto atau Vidio',
                                    style: FontFamily().mediumteks.copyWith(
                                        color: ColorStyle().primaryblue,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child:
                        Text('Nama Komunitas', style: FontFamily().mediumteks),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: TeksFormField(hinText: "Tulis Nama Komunitas")),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text('Tentang Komunitas',
                        style: FontFamily().mediumteks),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 164,
                      width: 396,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(color: ColorStyle().primaryblue)),
                      child: const TextField(
                        // controller: controler,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration(
                            border: InputBorder.none,

                            // filled: true,
                            // isDense: true,

                            hintText: ' Tulis Tentang Komunitas'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text('Proposal Pengajuan Komunitas',
                        style: FontFamily().mediumteks),
                  ),
                  IconButtonFormField(
                    teks: "Upload proposal pengajuan komunitas",
                    icon: Icons.cloud_upload_outlined,
                    onpressed: () {},
                  ),
                  const SizedBox(height: 32),
                  Center(
                    child: ButtonPrimay(
                        teks: "Ajukan",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  (const PengajuanKomunitasScreen()),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
