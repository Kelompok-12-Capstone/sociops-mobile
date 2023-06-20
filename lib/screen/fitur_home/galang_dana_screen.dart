import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GalangDana extends StatelessWidget {
  const GalangDana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Galang dana kamu',
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
                  padding: const EdgeInsets.all(16),
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
                                  "assets/contoh1.png",
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
                                      width: 86,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: Colors.red,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '3 HARI LAGI',
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
                                          color: Color(0xFFEEF4FF),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: const Icon(
                                        Icons.bookmark_outlined,
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
                                      width: 54,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
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
                                      width: 70,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            const SizedBox(width: 2),
                                            const Icon(
                                              Icons.verified,
                                              color: Color(0xFF444CE7),
                                              size: 14,
                                            ),
                                            Text(
                                              'Unilever',
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
                      SizedBox(
                        width: 372,
                        height: 30,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFECFDF3),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                          ),
                          child: Text(
                            '1 Aksi = Rp10.000',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: const Color(0xFF039855),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Gerakan #SemuaBisaTersenyum, Kampanye Peduli Kesejahjateraan Anak',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp233.461.250',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '72%',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const LinearProgressIndicator(
                        backgroundColor: Color(0XFFFEF3F2),
                        color: Color(0XFFD92D20),
                        value: 72 / 100,
                        minHeight: 12,
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 372,
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
                  padding: const EdgeInsets.all(16),
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
                                  "assets/contoh1.png",
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
                                      width: 86,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: Colors.red,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '3 HARI LAGI',
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
                                          color: Color(0xFFEEF4FF),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: const Icon(
                                        Icons.bookmark_outlined,
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
                                      width: 54,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
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
                                      width: 70,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            const SizedBox(width: 2),
                                            const Icon(
                                              Icons.verified,
                                              color: Color(0xFF444CE7),
                                              size: 14,
                                            ),
                                            Text(
                                              'Unilever',
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
                      SizedBox(
                        width: 372,
                        height: 30,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFECFDF3),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                          ),
                          child: Text(
                            '1 Aksi = Rp10.000',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: const Color(0xFF039855),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Gerakan #SemuaBisaTersenyum, Kampanye Peduli Kesejahjateraan Anak',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp233.461.250',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '72%',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const LinearProgressIndicator(
                        backgroundColor: Color(0XFFFEF3F2),
                        color: Color(0XFFD92D20),
                        value: 72 / 100,
                        minHeight: 12,
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 372,
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
                  padding: const EdgeInsets.all(16),
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
                                  "assets/contoh1.png",
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
                                      width: 86,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: Colors.red,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '3 HARI LAGI',
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
                                          color: Color(0xFFEEF4FF),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: const Icon(
                                        Icons.bookmark_outlined,
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
                                      width: 54,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
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
                                      width: 70,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            const SizedBox(width: 2),
                                            const Icon(
                                              Icons.verified,
                                              color: Color(0xFF444CE7),
                                              size: 14,
                                            ),
                                            Text(
                                              'Unilever',
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
                      SizedBox(
                        width: 372,
                        height: 30,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFECFDF3),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                          ),
                          child: Text(
                            '1 Aksi = Rp10.000',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: const Color(0xFF039855),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Gerakan #SemuaBisaTersenyum, Kampanye Peduli Kesejahjateraan Anak',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp233.461.250',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '72%',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const LinearProgressIndicator(
                        backgroundColor: Color(0XFFFEF3F2),
                        color: Color(0XFFD92D20),
                        value: 72 / 100,
                        minHeight: 12,
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 372,
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
