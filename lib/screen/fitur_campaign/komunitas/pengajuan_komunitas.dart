import 'package:sociops/screen/fitur_campaign/componen/button_style.dart';
import 'package:sociops/screen/fitur_campaign/componen/image_collection.dart';
import 'package:sociops/screen/fitur_campaign/komunitas/hyundai_page.dart';
import 'package:sociops/style/font_style.dart';
import 'package:flutter/material.dart';

class PengajuanKomunitasScreen extends StatefulWidget {
  const PengajuanKomunitasScreen({Key? key}) : super(key: key);

  @override
  State<PengajuanKomunitasScreen> createState() =>
      _PengajuanKomunitasScreenState();
}

class _PengajuanKomunitasScreenState extends State<PengajuanKomunitasScreen> {
  bool isObscureText = true;
  SizedBox tinggi = const SizedBox(height: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pengajuan Komunitas",
          style: FontFamily().mediumteks.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
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
                children: [
                  SizedBox(
                    child: Image.asset(ImageCollection.pengajuan),
                  ),
                  Text(
                    'Terimakasih!',
                    style: FontFamily().mediumteks.copyWith(),
                  ),
                  Text(
                    'Pengajuan komunitas telah berhasil dikirim dan saat ini sedang ditinjau. Mari kita periksa status verifikasi Anda',
                    textAlign: TextAlign.center,
                    style: FontFamily().light.copyWith(),
                  ),
                  const SizedBox(height: 140),
                  ButtonPrimay(
                    teks: "Cek Status",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (const HyundaiScreen()),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  ButtonSecondary(teks: "Kembali ke Beranda", onPressed: () {})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
