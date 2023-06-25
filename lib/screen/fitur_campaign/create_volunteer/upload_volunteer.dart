import 'dart:io';
import 'package:flutter/material.dart';
import 'package:giff_dialog/giff_dialog.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sociops/screen/fitur_campaign/componen/button_style.dart';
import 'package:sociops/screen/fitur_campaign/create_volunteer/pengajuan_volunteer.dart';
import 'package:sociops/screen/fitur_campaign/models/buatVolunteer_models.dart';
import 'package:sociops/service/volunteer_service.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class UploadVolunteerScreen extends StatefulWidget {
  const UploadVolunteerScreen({Key? key}) : super(key: key);

  @override
  State<UploadVolunteerScreen> createState() => _UploadVolunteerScreenState();
}

class _UploadVolunteerScreenState extends State<UploadVolunteerScreen> {
  // List<CategoryModels> listCategoryModels = [];
  // CategoryService categoryService = CategoryService();

  // getData() async {
  //   listCategoryModels = await categoryService.getData();
  // }

  // @override
  // void initState() {
  //   getData();
  //   super.initState();
  // }
  CampaignModel? campaignModel;
  String selectedCategory = '';
  bool isObscureText = true;
  SizedBox tinggi = const SizedBox(height: 12);
  File? image;
  File? videos;

  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image.
    final XFile? imagePicked =
        await picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {});
  }

  Future getVideo() async {
    final ImagePicker picker = ImagePicker();
    // Pick a video
    final XFile? galleryVideos =
        await picker.pickVideo(source: ImageSource.gallery);
    videos = File(galleryVideos!.path);
    setState(() {});
  }

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
                          Text('Upload Foto', style: FontFamily().mediumteks),
                    ),
                    image != null
                        ? Container(
                            alignment: Alignment.center,
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            child: Image.file(
                              image!,
                              fit: BoxFit.cover,
                            ))
                        : Container(),
                    TextButton.icon(
                      onPressed: () async {
                        await getImage();
                      },
                      icon: const Icon(
                        Icons.image_outlined,
                        color: Color(0XFF444CE7),
                      ),
                      label: const Text(
                        'Tambahkan Foto',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF444CE7),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text('Upload Vidio Promosi',
                          style: FontFamily().mediumteks),
                    ),
                    videos != null
                        ? Container(
                            alignment: Alignment.center,
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            child: Image.file(
                              videos!,
                              fit: BoxFit.cover,
                            ))
                        : Container(),
                    TextButton.icon(
                      onPressed: () async {
                        await getVideo();
                      },
                      icon: const Icon(
                        Icons.camera_alt,
                        color: Color(0XFF444CE7),
                      ),
                      label: const Text(
                        "Tambahkan Vidio",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF444CE7),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text('Judul', style: FontFamily().mediumteks),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Tulis",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text('Hastag', style: FontFamily().mediumteks),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Tambahkan tag dengan diawali #",
                        ),
                      ),
                    ),
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
                      child: Text('Tentang Campaign',
                          style: FontFamily().mediumteks),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 164,
                        width: 396,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            border:
                                Border.all(color: ColorStyle().primaryblue)),
                        child: const TextField(
                          // controller: controler,
                          textCapitalization: TextCapitalization.sentences,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Detail Campaign'),
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
                              hintText: 'Cerita dibuatnya Campaign'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child:
                          Text('Langkah Aksi', style: FontFamily().mediumteks),
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
                              hintText: 'Tuliskan Langkah'),
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
                                side:
                                    BorderSide(color: ColorStyle().primaryblue),
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
                                      child: Image.asset('assets/sepatu.png'),
                                    ),
                                    title: const Text(
                                        'Kirim pengajuan Campaign?',
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
                                    onOkButtonPressed: () async {
                                      CampaignModel? result =
                                          await VolunteerServices.createUser(
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
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
