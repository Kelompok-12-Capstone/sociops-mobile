import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_campaign/componen/button_style.dart';
import 'package:sociops/screen/fitur_campaign/create_volunteer/detail_volunteer.dart';
import 'package:sociops/screen/fitur_home/home_khusus_screen.dart';
import 'package:sociops/style/font_style.dart';

class PengajuanVolunteerScreen extends StatefulWidget {
  const PengajuanVolunteerScreen({Key? key}) : super(key: key);

  @override
  State<PengajuanVolunteerScreen> createState() =>
      _PengajuanVolunteerScreenState();
}

class _PengajuanVolunteerScreenState extends State<PengajuanVolunteerScreen> {
  bool isObscureText = true;
  SizedBox tinggi = const SizedBox(height: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Pengajuan Volunteer",
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
                  children: [
                    SizedBox(
                      child: Image.asset('assets/sukses.png'),
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
                              builder: (context) =>
                                  (const DetailVolunteerScreen()),
                            ),
                          );
                        }),
                    const SizedBox(height: 16),
                    ButtonSecondary(
                        teks: "Kembali ke Beranda", onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  (const HomeKhusus()),
                            ),
                          );
                        }
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
