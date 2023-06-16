import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_campaign/componen/button_style.dart';
import 'package:sociops/screen/fitur_campaign/componen/teks_form_field.dart';
import 'package:sociops/screen/fitur_campaign/create_campaign/pengajuan_donasi.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class UploadDonasiScreen extends StatefulWidget {
  const UploadDonasiScreen({Key? key}) : super(key: key);

  @override
  State<UploadDonasiScreen> createState() => _UploadDonasiScreenState();
}

class _UploadDonasiScreenState extends State<UploadDonasiScreen> {
  String selectedCategory = '';
  bool isObscureText = true;
  SizedBox tinggi = const SizedBox(height: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Buat Penggalangan Dana",
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
                  teks: "Tambahkan Vidio",
                  icon: Icons.video_camera_back,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Judul', style: FontFamily().mediumteks),
                ),
                TeksFormField(hinText: "Tulis"),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Hastag', style: FontFamily().mediumteks),
                ),
                TeksFormField(hinText: "Tambahkan tag dengan diawali #"),
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

                          // filled: true,
                          // isDense: true,

                          hintText: '  Detail Campaign'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Cerita', style: FontFamily().mediumteks),
                ),
                IconButtonFormField(teks: "Tambah Aksi", icon: Icons.add),
                const SizedBox(height: 18),
                ButtonPrimay(
                    teks: "Selanjutnya",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (const PengajuanDonasiScreen()),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
