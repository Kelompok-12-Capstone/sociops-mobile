import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:sociops/screen/fitur_volunteer/ambil_aksi_screen.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/widget/button_bar.dart';

class DetailVolunteerHome extends StatefulWidget {
  const DetailVolunteerHome({super.key});

  @override
  State<DetailVolunteerHome> createState() => _DetailVolunteerState();
}

class _DetailVolunteerState extends State<DetailVolunteerHome> {
  bool state = false;
  int indexcat = 0;
  // late VideoPlayerController videoPlayerController;
  // Future<void>? initializevideo;

  // @override
  // void initState() {
  //   super.initState();
  //   videoPlayerController = VideoPlayerController.asset(
  //       'assets/Seat Belts - What You Need to Know.mp4');
  //   initializevideo = videoPlayerController.initialize();
  //   videoPlayerController.setLooping(true);
  //   videoPlayerController.setVolume(2);
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   videoPlayerController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Detail Volunteer',
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
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      height: 240,
                      width: 370,
                      child: Image.asset(
                        'assets/galang dana page.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    'Gerakan #SampaiTujuanDenganAman, Hyundai Bekerjasama dengan Kepolisian Indonesia',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 12),
                        decoration: BoxDecoration(
                            color: Colors.lightBlue[50],
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'General',
                          style: GoogleFonts.inter(
                              fontSize: 14, color: const Color(0XFF444CE7)),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 2, color: const Color(0XFF444CE7))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Color(0XFF444CE7),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Indonesia (Online)',
                              style: GoogleFonts.inter(
                                  fontSize: 14, color: const Color(0XFF444CE7)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 396,
                    height: 80,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 187, 233, 255)),
                        borderRadius: BorderRadius.circular(58)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/logo_hyundai.png',
                              width: 58,
                              height: 56,
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Organizer',
                                  style: GoogleFonts.inter(fontSize: 12),
                                ),
                                Text(
                                  'PT. Hyundai',
                                  style: GoogleFonts.inter(
                                      fontSize: 20,
                                      color: const Color(0XFF444CE7)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 98,
                          height: 44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: const Color(0XFF444CE7)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Ikuti',
                              style: GoogleFonts.inter(
                                  fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 396,
                    height: 80,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 187, 233, 255)),
                        borderRadius: BorderRadius.circular(58)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/logo_notif.png',
                              width: 58,
                              height: 56,
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 182,
                                  height: 54,
                                  child: Text(
                                    'Nyalakan notifikasi Anda untuk mendapatkan informasi terbaru dari tantangan ini',
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      color: const Color(0XFF444CE7),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 98,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Colors.lightBlue[50],
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Aktifkan',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                color: const Color(0XFF444CE7),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    height: 20,
                    alignment: Alignment.topLeft,
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Video Promosi',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Image.asset(
                    'assets/video.png',
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'Kegiatan kampanye online yang diadakan oleh Perusahaan Hyundai dan bekerjasama dengan kepolisian Indonesia.',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  ReadMoreText(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    style: GoogleFonts.inter(),
                    trimLines: 4,
                    trimCollapsedText: '...read more',
                    trimExpandedText: ' less',
                    lessStyle: GoogleFonts.inter(
                        color: const Color(0XFF444CE7),
                        fontWeight: FontWeight.w600),
                    moreStyle: GoogleFonts.inter(
                        color: const Color(0XFF444CE7),
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 25,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    height: 30,
                    alignment: Alignment.topLeft,
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Tindakan yang harus di ambil',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
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
                          'assets/camera.png',
                        ),
                        title: Text(
                          'Aksi 1',
                          style: GoogleFonts.inter(
                              fontSize: 16, color: const Color(0XFF444CE7)),
                        ),
                        subtitle: Text(
                          'Upload foto kamu saat menggunakan sabuk pengaman di media sosial',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inter(
                              fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
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
                          'assets/thumb-up.png',
                        ),
                        title: Text(
                          'Aksi 2',
                          style: GoogleFonts.inter(
                              fontSize: 16, color: const Color(0XFF444CE7)),
                        ),
                        subtitle: Text(
                          'Upload foto kamu saat menggunakan sabuk pengaman di media sosial',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inter(
                              fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
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
}