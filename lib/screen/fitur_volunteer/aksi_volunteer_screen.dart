import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/fitur_volunteer/ambil_aksi_screen.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/widget/button_bar.dart';

class AksiScreen extends StatefulWidget {
  const AksiScreen({super.key});

  @override
  State<AksiScreen> createState() => _AksiScreenState();
}

class _AksiScreenState extends State<AksiScreen> {
  bool state = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Aksi 1',
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
          const SizedBox(width: 12),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.screen_share_outlined,
                color: AppColors.arrowColor,
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    height: 240,
                    width: 370,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/seatbelt.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Gerakan #SampaiTujuanDenganAman, Posting foto kamu di media sosial menggunakan Seat Belt saat bepergian dengan aman!',
                    style: GoogleFonts.inter(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 187, 233, 255)),
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                        horizontalTitleGap: 10,
                        minVerticalPadding: 10,
                        leading: Image.asset(
                          'assets/polaroid.png',
                        ),
                        title: Text(
                          'Cara ikutan',
                          style: GoogleFonts.inter(
                              fontSize: 16, color: const Color(0XFF444CE7)),
                        ),
                        subtitle: Text(
                          'Pada dasarnya, fungsi sabuk pengaman adalah untuk melindungi penumpang, baik dalam kondisi biasa maupun darurat. Lakukan aksimu dengan mengunggah foto memakai sabuk pengaman saat bepergian dan bagikan ke sosial media milik kamu. Jangan lupa gunakan tagar #SampaiTujuanDenganAman',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inter(
                              fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                    child: Divider(
                      color: Colors.black45,
                    ),
                  ),
                  Container(
                    height: 50,
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Aksi dari temanmu',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  daritemanmu(),
                  const SizedBox(
                    height: 20,
                  ),
                  daritemanmu(),
                  const SizedBox(
                    height: 20,
                  ),
                  daritemanmu(),
                  const SizedBox(
                    height: 20,
                  ),
                  Button().moreButton(),
                ],
              ),
            ),
          ],
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
                    builder: (context) => const AmbilAksiScreen(),
                  ),
                );
              },
              child: Text(
                'Ambil aksi',
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

  Widget daritemanmu() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 187, 233, 255)),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                child: Image.asset(
                  'assets/Rectangle 28.png',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Charlos Dean',
                style: GoogleFonts.inter(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '  • 7h',
                style: GoogleFonts.inter(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black45),
              ),
              const SizedBox(
                width: 70,
              ),
              IconButton(
                  splashRadius: 16,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert_outlined,
                    color: Colors.black45,
                  )),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            '''Pagi yang cerah untuk berlibur bersama keluarga. Tidak lupa saat mengendarai mobil kami selalu memastikan semua kelengkapan kami termasuk menjaga keselamatan dengan selalu menggunakan seat belt saat bepergian.

#SampaiTujuanDenganAman''',
            style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 240,
            width: 370,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/seatbelt2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 140),
            width: 210,
            padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.lightBlue[50],
                borderRadius: BorderRadius.circular(30)),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Image.asset(
                    'assets/instagram.png',
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Lihat di instagram',
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color(0XFF444CE7)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
