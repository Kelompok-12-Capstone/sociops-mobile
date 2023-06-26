// ignore_for_file: unused_field

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/widget/alert_dialog.dart';

class AmbilAksiScreen extends StatefulWidget {
  const AmbilAksiScreen({super.key});

  @override
  State<AmbilAksiScreen> createState() => _AmbilAksiScreenState();
}

class _AmbilAksiScreenState extends State<AmbilAksiScreen> {
  bool state = false;
  bool validate = false;
  String linkValue = '';

  final ImagePicker _picker = ImagePicker();
  List<XFile>? _imageFileList;
  dynamic _pickImageError;

  Future<void> _onImageButtonPressed(ImageSource source) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          _setImageFileListFromFile(pickedFile);
        });
      }
    } catch (e) {
      setState(() {
        _pickImageError = e;
      });
    }
    // ignore: use_build_context_synchronously
    Navigator.of(context).pop();
  }

  void _setImageFileListFromFile(XFile? file) {
    if (file != null) {
      setState(() {
        _imageFileList = [file];
      });
    }
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: 300.0,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          const Text(
            'Pilih Foto atau Video',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {
                  _onImageButtonPressed(ImageSource.camera);
                },
                icon: const Icon(
                  Icons.camera,
                  color: Color(0XFF444CE7),
                ),
                label: const Text(
                  'Kamera',
                  style: TextStyle(
                    color: Color(0XFF444CE7),
                  ),
                ),
              ),
              const SizedBox(width: 50),
              TextButton.icon(
                onPressed: () {
                  _onImageButtonPressed(ImageSource.gallery);
                },
                icon: const Icon(
                  Icons.image,
                  color: Color(0XFF444CE7),
                ),
                label: const Text(
                  'Galeri',
                  style: TextStyle(
                    color: Color(0XFF444CE7),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Ambil aksi',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        leading: const BackButton(
          color: Color(0XFF444CE7),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                state ? Icons.bookmark_border_outlined : Icons.bookmark;
              });
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.bookmark_border_outlined,
                color: AppColors.arrowColor,
              ),
            ),
          ),
          const SizedBox(width: 16)
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 396,
                  height: 108,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 187, 233, 255),
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/camera.png',
                        ),
                        const SizedBox(width: 12),
                        SizedBox(
                          width: 280,
                          height: 84,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Langkah pertama',
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: const Color(0XFF444CE7),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Ambil sebuah foto saat kamu akan melakukan perjalanan dengan memakai sabuk pengaman secara tepat dan benar',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  width: 396,
                  height: 188,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 187, 233, 255),
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/carousel-screen1.png',
                          width: 64,
                          height: 64,
                        ),
                        const SizedBox(width: 12),
                        SizedBox(
                          width: 280,
                          height: 164,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Langkah kedua',
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: const Color(0XFF444CE7),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Buatlah caption yang menjelaskan bagaimana kamu peduli dengan keselamatan saat berkendara dari hal yang kecil seperti menggunakan sabuk pengaman. Cantumkan tagar #SampaiTujuanDenganAman dan tag akun @Hyundai di sosial media kamu',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  width: 396,
                  height: 188,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 187, 233, 255),
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/camera.png',
                          // 'assets/phone.png',
                          width: 64,
                          height: 64,
                        ),
                        const SizedBox(width: 12),
                        SizedBox(
                          width: 280,
                          height: 164,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Langkah ketiga',
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: const Color(0XFF444CE7),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Posting foto dan caption yang telah kamu buat ke media sosial kamu. Jika sudah selesai, screenshoot bukti kamu telah memposting challenge ini di media sosial kamu. Jangan lupa untuk mencantumkan link media sosial yang kamu gunakan pada kolom di bawah ini.',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 12),
                Text(
                  'Upload bukti postingan',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 16),
                if (_imageFileList != null)
                  Center(
                    child: Image.file(
                      File(_imageFileList![0].path),
                      width: 372,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  )
                else
                  SizedBox(
                    width: 396,
                    height: 120,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFEEF4FF),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side: BorderSide.none,
                          ),
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => bottomSheet(),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.photo_library_outlined,
                            color: Color(0xFF444CE7),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Tambah foto atau video',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF444CE7),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                const SizedBox(height: 32),
                SizedBox(
                  width: 396,
                  height: 52,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFEEF4FF),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          side: BorderSide.none,
                        ),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Tambahkan link'),
                            content: TextField(
                              onChanged: (value) {
                                setState(
                                  () {
                                    linkValue = value;
                                  },
                                );
                              },
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      Navigator.pop(context);
                                    },
                                  );
                                },
                                child: const Text('Simpan'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text(
                      linkValue.isEmpty ? 'Tambahkan link' : linkValue,
                      style: GoogleFonts.inter(
                        color: const Color(0xFF444CE7),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: 396,
            height: 60,
            child: OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF444CE7),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              onPressed: () {
                if (linkValue.isEmpty) {
                  Alert().errDialog(context);
                } else {
                  Alert().doneAlert(context);
                }
              },
              child: Text(
                'Simpan',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
