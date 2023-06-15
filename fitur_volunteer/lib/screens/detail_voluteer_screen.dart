import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../widget/button_bar.dart';
import 'aksi_volunteer_screen.dart';

class DetailVolunteer extends StatefulWidget {
  const DetailVolunteer({super.key});

  @override
  State<DetailVolunteer> createState() => _DetailVolunteerState();
}

class _DetailVolunteerState extends State<DetailVolunteer> {
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
          'Detail Volunteer',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                state ? Icons.bookmark_border_outlined : Icons.bookmark;
              });
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
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    height: 240,
                    width: 370,
                    child: Image.asset(
                      'assets/Rectangle 8 (1).png',
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
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 187, 233, 255)),
                      borderRadius: BorderRadius.circular(35)),
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[50],
                          border: Border.all(
                            color: Colors.lightBlue,
                          ),
                          borderRadius: BorderRadius.circular(35)),
                      child: CircleAvatar(
                        backgroundColor: Colors.lightBlue[50],
                        child: Image.asset(
                          'assets/logo.png',
                        ),
                      ),
                    ),
                    title: Text(
                      'Organizer',
                      style: GoogleFonts.inter(fontSize: 12),
                    ),
                    subtitle: Text(
                      'PT. Hyundai',
                      style: GoogleFonts.inter(
                          fontSize: 20, color: const Color(0XFF444CE7)),
                    ),
                    trailing: Container(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
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
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 187, 233, 255)),
                      borderRadius: BorderRadius.circular(35)),
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[50],
                          border: Border.all(
                            color: Colors.lightBlue,
                          ),
                          borderRadius: BorderRadius.circular(35)),
                      child: CircleAvatar(
                          backgroundColor: Colors.lightBlue[50],
                          child: const Icon(
                            Icons.notifications_none_rounded,
                            color: Colors.black,
                          )),
                    ),
                    title: Text(
                      'Nyalakan notifikasi Anda untuk mendapatkan informasi terbaru dari tantangan ini',
                      style: GoogleFonts.inter(
                          fontSize: 12, color: const Color(0XFF444CE7)),
                    ),
                    trailing: Container(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.lightBlue[50]),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Aktifkan',
                          style: GoogleFonts.inter(
                              fontSize: 16, color: const Color(0XFF444CE7)),
                        ),
                      ),
                    ),
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
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
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
                    Positioned(
                      top: 20,
                      child: InkWell(
                        onTap: () {},
                        child: Opacity(
                          opacity: 0.6,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                            height: 240,
                            width: 370,
                            child: Icon(
                              Icons.play_circle_fill_rounded,
                              size: 50,
                              color: Colors.blueGrey[100],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ReadMoreText(
                  '''The standard Lorem Ipsum passage, used since the 1500s
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."''',
                  style: GoogleFonts.inter(),
                  trimLines: 3,
                  trimCollapsedText: '...Read more',
                  trimExpandedText: ' Less',
                  textAlign: TextAlign.justify,
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (contex) => const AksiScreen()));
                  },
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (contex) => const AksiScreen()));
                  },
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
                        'assets/quirky-thumb-up-hand-1 2.png',
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
      bottomNavigationBar: Button().buttonbar((context)),
    );
  }
}
