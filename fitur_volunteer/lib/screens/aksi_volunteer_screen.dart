import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/button_bar.dart';

class AksiScreen extends StatefulWidget {
  const AksiScreen({super.key});

  @override
  State<AksiScreen> createState() => _AksiScreenState();
}

class _AksiScreenState extends State<AksiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.lightBlue[50],
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            splashRadius: 25,
            splashColor: Colors.blueAccent[100],
            icon: const Icon(
              Icons.keyboard_backspace,
              color: Color(0XFF444CE7),
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Aksi 1',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // setState(() {
              //   state ? Icons.bookmark_border_outlined : Icons.bookmark;
              // });
            },
            splashRadius: 25,
            splashColor: Colors.blueAccent[100],
            icon: const Icon(
              Icons.bookmark_border_outlined,
              color: Color(0XFF444CE7),
            ),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 25,
            splashColor: Colors.blueAccent[100],
            icon: const Icon(
              Icons.screen_share_outlined,
              color: Color(0XFF444CE7),
            ),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
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
                      'assets/seat-belt.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'Gerakan #SampaiTujuanDenganAman, Posting foto kamu di media sosial menggunakan Seat Belt saat bepergian dengan aman!',
                  style: GoogleFonts.inter(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
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
                        'assets/quirky-polaroid-photo-with-caption 1.png',
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
      bottomNavigationBar: Button().buttonbar((context)),
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
                'assets/cara_memakai_sabuk_pengaman_mobil 2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 140),
            width: 210,
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.lightBlue[50],
                borderRadius: BorderRadius.circular(30)),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    child: Image.asset(
                      'assets/logo-ig-png-32464.png',
                    ),
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
