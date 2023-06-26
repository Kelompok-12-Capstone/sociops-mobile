// ignore_for_file: unused_field

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sociops/screen/fitur_donation/success_action_payment.dart';

class DetailDonationScreen extends StatefulWidget {
  const DetailDonationScreen({super.key});

  @override
  State<DetailDonationScreen> createState() => _DetailDonationScreenState();
}

class _DetailDonationScreenState extends State<DetailDonationScreen> {
  bool isBookmarked = false;
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
          'Detail galang dana',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        leading: const BackButton(
          color: Color(0XFF444CE7),
        ),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isBookmarked = !isBookmarked;
                });
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Color(0XFFEEF4FF),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isBookmarked
                      ? Icons.bookmark_outlined
                      : Icons.bookmark_border_outlined,
                  color: const Color(0XFF444CE7),
                ),
              ),
            ),
          )
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
                Image.asset('assets/Rectangle 8.png'),
                const SizedBox(height: 8),
                Text(
                  '#BisaBebasStunting: Donasi untuk Bantu Pengobatan',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 148,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffe0eaff)),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          top: 12,
                          left: 12,
                          right: 12,
                        ),
                        child: Image.asset(
                          'assets/polaroid.png',
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16),
                          Text(
                            'Cara berdonasi dengan aksi',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: const Color(0xFF444CE7),
                            ),
                          ),
                          const SizedBox(height: 4),
                          SizedBox(
                            width: 300,
                            child: Text(
                              'Upload foto kamu di sosial media dengan caption yang menjelaskan apa itu stunting dan bagaimana pencegahannya. Jangan lupa untuk menuliskan tagar #BisaBebasStunting dan tag akun @SkillUpLife',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Divider(),
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
                                setState(() {
                                  linkValue = value;
                                });
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
                                  setState(() {
                                    Navigator.pop(context);
                                  });
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SuccessActionScreen(),
                  ),
                );
              },
              child: Text(
                'Lanjutkan',
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
