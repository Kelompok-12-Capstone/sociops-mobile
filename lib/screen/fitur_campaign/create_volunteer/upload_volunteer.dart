import 'dart:io';
import 'package:flutter/material.dart';
import 'package:giff_dialog/giff_dialog.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sociops/screen/fitur_campaign/componen/button_style.dart';
import 'package:sociops/screen/fitur_campaign/create_volunteer/pengajuan_volunteer.dart';
import 'package:sociops/screen/fitur_campaign/models/buatVolunteer_models.dart';
import 'package:sociops/service/buatvolunteer_service.dart';
import 'package:sociops/service/service_category.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class UploadVolunteerScreen extends StatefulWidget {
  const UploadVolunteerScreen({Key? key}) : super(key: key);

  @override
  State<UploadVolunteerScreen> createState() => _UploadVolunteerScreenState();
}

class _UploadVolunteerScreenState extends State<UploadVolunteerScreen> {
  BuatVolunteerService buatVolunteerService = BuatVolunteerService();
  TextEditingController titleController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  TextEditingController storyController = TextEditingController();
  TextEditingController proposalController = TextEditingController();
  TextEditingController hastagController = TextEditingController();

  List<CategoryModels> listCategoryModels = [];
  CategoryService categoryService = CategoryService();

  getData() async {
  listCategoryModels = await categoryService.getCategoryService();
  setState(() {});
}

  @override
  void initState() {
    getData();
    super.initState();
  }

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
  String selectedCategory = '';
  bool isObscureText = true;
  SizedBox tinggi = const SizedBox(height: 12);
  File? image;
  File? videos;

  Future getImage() async{
    final ImagePicker picker = ImagePicker();
      // Pick an image.
    final XFile? imagePicked = await picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {});
  }

  Future getVideo() async {
    final ImagePicker picker = ImagePicker();
    // Pick a video
    final XFile? galleryVideos = await picker.pickVideo(source: ImageSource.gallery);
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
                    child: Text(
                      'Upload Foto', 
                      style: FontFamily().mediumteks),
                  ),
                  image != null?
                  Container(
              alignment: Alignment.center,
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.file(
                image!,
                fit: BoxFit.cover,
              )
            ) : Container(),
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
                  videos != null?
                  Container(
              alignment: Alignment.center,
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.file(
                videos!,
                fit: BoxFit.cover,
              )
            ) : Container(),
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
                  Align(
                    alignment: Alignment.center,
                    child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(), 
                      hintText: "Tulis",
                    ),
                    controller: titleController,
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
                          border: Border.all(color: ColorStyle().primaryblue)),
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
                                    child: Image.asset('assets/sepatu.png'),
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
                                  onOkButtonPressed: () async {
                                    bool response = await buatVolunteerService.postData(
                                      title: titleController.text,
                                      story: storyController.text,
                                      about: aboutController.text,
                                      hastag: hastagController.text,
                                    );
                                    if (response) {
                                    // ignore: use_build_context_synchronously
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            (const PengajuanVolunteerScreen()),
                                      ),
                                    );
                                    } else {
                                        print('Created Form Gagal!');
                                      }
                                  },
                                  onCancelButtonPressed: () =>
                                      Navigator.of(context).pop(),
                                ));
                      },
                    ),
                  ),
          ]),
        )],
        ),
      ),
    );
  }
}
