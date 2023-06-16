// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sociops/style/font_style.dart';

import '../componen/ButtonStyle.dart';
import '../componen/ImageCollection.dart';
import 'Detail_donasi.dart';

class PengajuanDonasiScreen extends StatefulWidget {
  const PengajuanDonasiScreen({Key? key}) : super(key: key);

  @override
  State<PengajuanDonasiScreen> createState() => _PengajuanDonasiScreenState();
}

class _PengajuanDonasiScreenState extends State<PengajuanDonasiScreen> {
  bool isObscureText = true;
  SizedBox tinggi = const SizedBox(height: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Pengajuan Campaign",
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
                children: [
                  SizedBox(
                    child: Image.asset(ImageCollection.pengajuan),
                  ),
                  Text(
                    'Terimakasih!',
                    style: FontFamily().mediumteks.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  Text(
                      'Campaign telah berhasil dikirim dan saat ini sedang ditinjau. Mari kita periksa status verifikasi Anda',
                      textAlign: TextAlign.center,
                      style: FontFamily().light),
                  const SizedBox(height: 140),
                  ButtonPrimay(
                      teks: "Lihat Status",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => (const DetailDonasiScreen()),
                          ),
                        );
                      }),
                  const SizedBox(height: 16),
                  ButtonSecondary(teks: "Kembali ke Beranda", onPressed: () {})
                ],
              ),
            ),
          ],
        ));
  }
}
