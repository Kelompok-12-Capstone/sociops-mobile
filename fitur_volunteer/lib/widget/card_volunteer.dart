import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../screens/detail_voluteer_screen.dart';

class CardVolunteer {
  Widget cardVolunter(context) {
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0XFFFEE4E2),
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Center(
                child: SizedBox(
                  width: 400,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/Rectangle 8 (1).png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  width: 120,
                  height: 22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      'SEGERA DITUTUP',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: CircleAvatar(
                  backgroundColor: Color(0xFFEEF4FF),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_border,
                      color: Color(0xFF444CE7),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 54,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          'Umum',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: const Color(0xFF444CE7),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 82,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.verified,
                              color: Color(0xFF444CE7),
                            ),
                            Text(
                              'Hyundai',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                color: const Color(0xFF444CE7),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 120,
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: const Color(0XFF444CE7))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Color(0XFF444CE7),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Indonesia',
                    style: GoogleFonts.inter(
                        fontSize: 14, color: const Color(0XFF444CE7)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ReadMoreText(
            '''

Kegiatan kampanye online yang diadakan oleh Perusahaan Hyundai Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam''',
            preDataText:
                'Gerakan #SampaiTujuanDenganAman, Hyundai Bekerjasama dengan Kepolisian Indonesia',
            trimCollapsedText: ' ',
            trimExpandedText: ' less',
            trimLines: 1,
            trimLength: 45,
            preDataTextStyle: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            style: GoogleFonts.inter(),
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: const MaterialStatePropertyAll(Size(360, 55)),
              backgroundColor: MaterialStatePropertyAll(Colors.red[50]),
              padding: const MaterialStatePropertyAll(
                EdgeInsets.all(16),
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailVolunteer()));
            },
            child: Text(
              'Daftar',
              style: GoogleFonts.inter(
                  fontSize: 16, color: Colors.red, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
