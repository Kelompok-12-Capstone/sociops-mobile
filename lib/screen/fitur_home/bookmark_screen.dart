import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/fitur_donation/detail_donate_screen.dart';
import 'package:sociops/screen/fitur_donation/detail_donation_screen.dart';
import 'package:sociops/screen/fitur_home/filter_screen.dart';
import 'package:sociops/screen/fitur_home/urutan_screen.dart';
import 'package:sociops/screen/fitur_volunteer/detail_volunteer_screen.dart';
import 'package:sociops/style/color_style.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  bool isContainer1Visible = true;
  bool isContainer2Visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Bookmark',
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                        height: 48,
                        child: OutlinedButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              ColorStyle().buttonColor,
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                                side: BorderSide.none,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FilterScreen(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.filter_list_sharp,
                            color: ColorStyle().primaryblue,
                          ),
                          label: Text(
                            'Filter',
                            style: TextStyle(
                              color: ColorStyle().primaryblue,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      SizedBox(
                        width: 192,
                        height: 48,
                        child: OutlinedButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              ColorStyle().buttonColor,
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                                side: BorderSide.none,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UrutanScreen(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.swap_vert_outlined,
                            color: ColorStyle().primaryblue,
                          ),
                          label: Text(
                            'Urut',
                            style: TextStyle(
                              color: ColorStyle().primaryblue,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Visibility(
                  visible: isContainer1Visible,
                  child: Container(
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
                                  child: Image.network(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 6),
                                          child: IconButton(
                                            onPressed: () {
                                              CoolAlert.show(
                                                context: context,
                                                title:
                                                    'Hapus dari bookmark Anda?',
                                                type: CoolAlertType.confirm,
                                                text:
                                                    'Yakin ingin menghapusnya dari bookmark Anda? Anda masih dapat menemukannya di jelajahi',
                                                confirmBtnColor:
                                                    ColorStyle().redtest,
                                                cancelBtnTextStyle: TextStyle(
                                                  color:
                                                      ColorStyle().primarydark,
                                                ),
                                                onConfirmBtnTap: () {
                                                  setState(() {
                                                    isContainer1Visible = false;
                                                  });
                                                },
                                              );
                                            },
                                            icon: const Icon(
                                                Icons.bookmark_outlined),
                                            color: const Color(0xFF444CE7),
                                          ),
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
                                        alignment: Alignment.center,
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
                                                size: 16,
                                              ),
                                              Text(
                                                'Unilever',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.inter(
                                                  color:
                                                      const Color(0xFF444CE7),
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailDonationScreen(),
                                ),
                              );
                            },
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
                                fontSize: 16,
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailDonateScreen(),
                                ),
                              );
                            },
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
                              'Donasi sekarang',
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
                ),
                const SizedBox(height: 16),
                Visibility(
                  visible: isContainer1Visible,
                  child: Container(
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
                                  child: Image.network(
                                    "assets/galang dana page.png",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                          color: Color(0xFFEEF4FF),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 6),
                                          child: IconButton(
                                            onPressed: () {
                                              CoolAlert.show(
                                                context: context,
                                                title:
                                                    'Hapus dari bookmark Anda?',
                                                type: CoolAlertType.confirm,
                                                text:
                                                    'Yakin ingin menghapusnya dari bookmark Anda? Anda masih dapat menemukannya di jelajahi',
                                                confirmBtnColor:
                                                    ColorStyle().redtest,
                                                cancelBtnTextStyle: TextStyle(
                                                  color:
                                                      ColorStyle().primarydark,
                                                ),
                                                onConfirmBtnTap: () {
                                                  setState(() {
                                                    isContainer1Visible = false;
                                                  });
                                                },
                                              );
                                            },
                                            icon: const Icon(
                                                Icons.bookmark_outlined),
                                            color: const Color(0xFF444CE7),
                                          ),
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
                                                size: 16,
                                              ),
                                              Text(
                                                'Hyundai',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.inter(
                                                  color:
                                                      const Color(0xFF444CE7),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              width: 85,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF444CE7),
                                ),
                                borderRadius: BorderRadius.circular(32.0),
                                color: ColorStyle().backgroundfield,
                              ),
                              child: Center(
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
                            ),
                            const SizedBox(width: 4),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: 108,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF444CE7),
                                ),
                                borderRadius: BorderRadius.circular(32.0),
                                color: ColorStyle().backgroundfield,
                              ),
                              child: Center(
                                child: Text(
                                  'on Social Media',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    color: const Color(0xFF444CE7),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
                          width: 372,
                          height: 44,
                          // child: TextButton(
                          //   onPressed: () {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (context) => const DetailVolunteer(),
                          //       ),
                          //     );
                          //   },
                          //   style: ButtonStyle(
                          //     backgroundColor: MaterialStateProperty.all<Color>(
                          //       const Color(0xFFFEF3F2),
                          //     ),
                          //     shape: MaterialStateProperty.all<
                          //         RoundedRectangleBorder>(
                          //       RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(32.0),
                          //       ),
                          //     ),
                          //   ),
                          //   child: Text(
                          //     'Daftar',
                          //     style: GoogleFonts.inter(
                          //       fontWeight: FontWeight.w600,
                          //       fontSize: 14,
                          //       color: const Color(0xFFD92D20),
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
