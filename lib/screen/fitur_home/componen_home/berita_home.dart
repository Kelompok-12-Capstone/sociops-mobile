import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../style/color_style.dart';
import 'package:sociops/screen/fitur_organization/berita_detail_home.dart';

class BeritaHomeWidget extends StatefulWidget {
  const BeritaHomeWidget({Key? key}) : super(key: key);

  @override
  State<BeritaHomeWidget> createState() => _BeritaHomeWidgetState();
}

class _BeritaHomeWidgetState extends State<BeritaHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: 396,
        height: 162,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              width: 1,
              color: ColorStyle().kotakColor,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 12),
                    child: SizedBox(
                      width: 94,
                      height: 94,
                      child: Image.asset(
                        'assets/fundraising.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 18,
                    bottom: 8,
                    child: Container(
                      width: 83,
                      height: 22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        color: ColorStyle().buttonColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Fundraising',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: const Color(0xFF444CE7),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 12),
                  Container(
                    width: 256,
                    height: 140,
                    margin: const EdgeInsets.only(
                      top: 12,
                    ),
                    child: SizedBox(
                      width: 266,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '3 hari yang lalu',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            margin: const EdgeInsets.only(right: 16),
                            child: Column(
                              children: [
                                Text(
                                  'Seru! Salurkan Donasi Alat Kesenian untuk Anak-anak Desa Wagiri',
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  textAlign: TextAlign.left,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Pada hari jumat tanggal 5 Mei 2023, komunitas Desa Wagiri membagikan alat kesenian',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: 240,
                            height: 44,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const BacaDetailHome(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  ColorStyle().buttonColor,
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                ),
                              ),
                              child: Text(
                                'Baca selengkapnya',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: ColorStyle().primaryblue,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
