import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/style/color_style.dart';

class Volunteer extends StatelessWidget {
  const Volunteer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Volunteer kamu',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        leading: const BackButton(
          color: Color(0XFF444CE7),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 192,
                        height: 44,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF444CE7),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26.0),
                                side: const BorderSide(
                                  width: 1.5,
                                  color: Color(0xFF444CE7),
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Selesai',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      SizedBox(
                        width: 192,
                        height: 44,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFFFFFFF),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26.0),
                                side: const BorderSide(
                                  width: 1.5,
                                  color: Color(0xFF444CE7),
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Sedang berjalan',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: const Color(0xFF444CE7),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
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
                              width: 600,
                              height: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/galang dana page.png",
                                  width: 10,
                                  height: 10,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 8,
                            right: 8,
                            bottom: 8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: Colors.red,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'SEGERA TUTUP',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 36,
                                      width: 36,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFE0EAFF),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.bookmark_border,
                                        color: Color(0xFF444CE7),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 130),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: ColorStyle().buttonColor,
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
                                      width: 75,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: ColorStyle().buttonColor,
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.verified,
                                              color: Color(0xFF444CE7),
                                              size: Checkbox.width,
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
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Container(
                        margin: const EdgeInsets.only(right: 236),
                        alignment: Alignment.centerLeft,
                        width: 96,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorStyle().buttonColor,
                          ),
                          borderRadius: BorderRadius.circular(32.0),
                          color: ColorStyle().backgroundfield,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Color(0xFF444CE7),
                              size: Checkbox.width,
                            ),
                            Text(
                              'Indonesia',
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
                      const SizedBox(height: 8),
                      Text(
                        'Gerakan #SampaiTujuanDenganAman, Hyundai Bekerjasama dengan Kepolisian Indonesia',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        margin: const EdgeInsets.only(right: 16),
                        child: Text(
                          'Kegiatan kampanye online yang diadakan oleh Perusahaan Hyundai',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 500,
                        height: 44,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFFEF3F2),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                          ),
                          child: Text(
                            'Ditutup',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: const Color(0xFFD92D20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
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
                              width: 600,
                              height: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/galang dana page.png",
                                  width: 10,
                                  height: 10,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 8,
                            right: 8,
                            bottom: 8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: Colors.red,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'SEGERA TUTUP',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 36,
                                      width: 36,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFE0EAFF),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.bookmark_border,
                                        color: Color(0xFF444CE7),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 130),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: ColorStyle().buttonColor,
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
                                      width: 75,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: ColorStyle().buttonColor,
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.verified,
                                              color: Color(0xFF444CE7),
                                              size: Checkbox.width,
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
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Container(
                        margin: const EdgeInsets.only(right: 236),
                        alignment: Alignment.centerLeft,
                        width: 96,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorStyle().buttonColor,
                          ),
                          borderRadius: BorderRadius.circular(32.0),
                          color: ColorStyle().backgroundfield,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Color(0xFF444CE7),
                              size: Checkbox.width,
                            ),
                            Text(
                              'Indonesia',
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
                      const SizedBox(height: 8),
                      Text(
                        'Gerakan #SampaiTujuanDenganAman, Hyundai Bekerjasama dengan Kepolisian Indonesia',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        margin: const EdgeInsets.only(right: 16),
                        child: Text(
                          'Kegiatan kampanye online yang diadakan oleh Perusahaan Hyundai',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 500,
                        height: 44,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFFEF3F2),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                          ),
                          child: Text(
                            'Ditutup',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: const Color(0xFFD92D20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
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
                              width: 600,
                              height: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/galang dana page.png",
                                  width: 10,
                                  height: 10,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 8,
                            right: 8,
                            bottom: 8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: Colors.red,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'SEGERA TUTUP',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 36,
                                      width: 36,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFE0EAFF),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.bookmark_border,
                                        color: Color(0xFF444CE7),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 130),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: ColorStyle().buttonColor,
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
                                      width: 75,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: ColorStyle().buttonColor,
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.verified,
                                              color: Color(0xFF444CE7),
                                              size: Checkbox.width,
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
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Container(
                        margin: const EdgeInsets.only(right: 236),
                        alignment: Alignment.centerLeft,
                        width: 96,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorStyle().buttonColor,
                          ),
                          borderRadius: BorderRadius.circular(32.0),
                          color: ColorStyle().backgroundfield,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Color(0xFF444CE7),
                              size: Checkbox.width,
                            ),
                            Text(
                              'Indonesia',
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
                      const SizedBox(height: 8),
                      Text(
                        'Gerakan #SampaiTujuanDenganAman, Hyundai Bekerjasama dengan Kepolisian Indonesia',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        margin: const EdgeInsets.only(right: 16),
                        child: Text(
                          'Kegiatan kampanye online yang diadakan oleh Perusahaan Hyundai',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 500,
                        height: 44,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFFEF3F2),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                          ),
                          child: Text(
                            'Ditutup',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: const Color(0xFFD92D20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
