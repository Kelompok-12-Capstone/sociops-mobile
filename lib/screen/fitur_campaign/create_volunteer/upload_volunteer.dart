import 'package:flutter/material.dart';
import 'package:giff_dialog/giff_dialog.dart';
import 'package:sociops/screen/fitur_campaign/componen/button_style.dart';
import 'package:sociops/screen/fitur_campaign/componen/image_collection.dart';
import 'package:sociops/screen/fitur_campaign/componen/teks_form_field.dart';
import 'package:sociops/screen/fitur_campaign/create_volunteer/pengajuan_volunteer.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class UploadVolunteerScreen extends StatefulWidget {
  const UploadVolunteerScreen({Key? key}) : super(key: key);

  @override
  State<UploadVolunteerScreen> createState() => _UploadVolunteerScreenState();
}

class _UploadVolunteerScreenState extends State<UploadVolunteerScreen> {
  String selectedCategory = '';
  bool isObscureText = true;
  SizedBox tinggi = const SizedBox(height: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Volunteer",
          style: FontFamily()
              .mediumteks
              .copyWith(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: const BackButton(
          color: Color(0XFF444CE7),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Upload Foto', style: FontFamily().mediumteks),
                ),
                ButtonUploadMedia(
                    teks: "Tambahkan Foto atau Vidio",
                    icon: Icons.image_outlined),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Upload Vidio Promosi',
                      style: FontFamily().mediumteks),
                ),
                ButtonUploadMedia(
                  teks: "Upload Vidio Promosi",
                  icon: Icons.video_camera_back,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Judul', style: FontFamily().mediumteks),
                ),
                Align(
                  alignment: Alignment.center,
                  child: TeksFormField(hinText: "Tulis Judul"),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Hastag', style: FontFamily().mediumteks),
                ),
                Align(
                    alignment: Alignment.center,
                    child: TeksFormField(
                        hinText: "Tambahkan tag dengan diawali #")),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Kategori', style: FontFamily().mediumteks),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 52,
                    width: 396,
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: ColorStyle().primaryblue,
                              width: 1.0,
                              style: BorderStyle.solid),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                        ),
                      ),
                      child: DropdownButton<String>(
                        items: <String>[
                          ' Pendidikan',
                          ' Lingkungan',
                          ' Sosial',
                          ' Anak Sakit',
                          ' Keshatan',
                          ' Infrastruktur',
                          ' Seni',
                          ' Bencana',
                          ' Panti Asuhan',
                          ' Disabilitas',
                          ' Kemanusiaan',
                          ' Lainnya'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Text(selectedCategory.isEmpty
                            ? '  Pilih Kategori'
                            : selectedCategory),
                        borderRadius: BorderRadius.circular(10),
                        underline: const SizedBox(),
                        isExpanded: true,
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              selectedCategory = value;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child:
                      Text('Tentang Campaign', style: FontFamily().mediumteks),
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
                          hintText: '  Detail Campaign'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Cerita', style: FontFamily().mediumteks),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
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
                          hintText: '  Cerita dibuatnya Campaign'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Langkah Aksi', style: FontFamily().mediumteks),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
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
                          hintText: '  Tuliskan Langkah'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 396,
                    height: 52,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(60),
                              ),
                            ),
                            side: BorderSide(color: ColorStyle().primaryblue),
                            shadowColor: ColorStyle().primaryblue),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tambah Aksi',
                              style: FontFamily().mediumteks.copyWith(
                                  color: ColorStyle().primaryblue,
                                  fontSize: 14),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add,
                                  color: ColorStyle().primaryblue,
                                ))
                          ],
                        )),
                  ),
                ),
                const SizedBox(height: 48),
                Align(
                  alignment: Alignment.center,
                  child: ButtonPrimay(
                    teks: "Selanjutnya",
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) => NetworkGiffDialog(
                                image: Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: Image.asset(ImageCollection.sepatu),
                                ),
                                title: const Text('Kirim pengajuan Campaign?',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w600)),
                                description: const Text(
                                  'Pastikan semua data yang Anda masukkan sudah benar',
                                  textAlign: TextAlign.center,
                                ),
                                buttonOkColor: ColorStyle().primaryblue,
                                buttonCancelColor: ColorStyle().disable,
                                onOkButtonPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          (const PengajuanVolunteerScreen()),
                                    ),
                                  );
                                },
                                onCancelButtonPressed: () =>
                                    Navigator.of(context).pop(),
                              ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
