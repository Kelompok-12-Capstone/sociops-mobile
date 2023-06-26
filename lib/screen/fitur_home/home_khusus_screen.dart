import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/fitur_donation/detail_donate_screen.dart';
import 'package:sociops/screen/fitur_donation/detail_donation_screen.dart';
import 'package:sociops/screen/fitur_donation/donation_screen.dart';
import 'package:sociops/screen/fitur_home/bookmark_screen.dart';
import 'package:sociops/screen/fitur_organization/berita.dart';
import 'package:sociops/screen/fitur_organization/organization.dart';
import 'package:sociops/screen/fitur_organization/profile_organizer.dart/hyundai.dart';
import 'package:sociops/screen/fitur_organization/profile_organizer.dart/unilever.dart';
import 'package:sociops/screen/fitur_volunteer/detail_volunteer_screen.dart';
import 'package:sociops/screen/fitur_volunteer/volunteer_screen.dart';
import 'package:sociops/style/color_style.dart';
import 'package:video_player/video_player.dart';

import '../../model/model_campaign.dart';
import '../../service/campaign_service/campaign_service.dart';
import '../../service/campaign_service/volunteer_service.dart';
import '../fitur_volunteer/detail_volunter_home.dart';
import 'componen_home/all_video_screen.dart';
import 'componen_home/berita_home.dart';
import 'componen_home/program_list.dart';

class HomeKhusus extends StatefulWidget {
  const HomeKhusus({super.key});

  @override
  State<HomeKhusus> createState() => _HomeKhususState();
}

class _HomeKhususState extends State<HomeKhusus> {
  List<VideoPlayerController?> _controllers = [];
  List<String> videoUrls = [];

  final VolunteerService volunteer = VolunteerService();

  bool isFollowing = false;
  bool isFollowing2 = false;

  void toggleFollow() {
    setState(() {
      isFollowing = !isFollowing;
    });
  }

  void toggleFollow2() {
    setState(() {
      isFollowing2 = !isFollowing2;
    });
  }

  @override
  void dispose() {
    super.dispose();
    for (var controller in _controllers) {
      controller?.dispose();
    }
  }

  //////
  @override
  void initState() {
    super.initState();
    volunteer.getVolunteerData().then((volntr) {
      if (volntr.data.length >= 4) {
        // Memastikan terdapat minimal 4 data
        setState(() {
          videoUrls = [
            volntr.data[1].video!,
            volntr.data[2].video!,
            volntr.data[3].video!,
            volntr.data[4].video!, // Menambahkan video dari ID 4
          ];
          _controllers = videoUrls
              .map((videoUrl) => VideoPlayerController.network(videoUrl))
              .toList();

          Future.wait(
                  _controllers.map((controller) => controller!.initialize()))
              .then((_) {
            setState(() {});
          });
        });
      }
    });
  }

  //////
  void _togglePlayPause(int index) {
    if (_controllers[index]!.value.isPlaying) {
      _controllers[index]!.pause();
    } else {
      _controllers[index]!.play();
    }
  }

  /////
  Icon _getPlayPauseIcon(int index) {
    return _controllers[index]!.value.isPlaying == true
        ? const Icon(Icons.pause)
        : const Icon(Icons.play_arrow);
  }

//////
  final CampaignService campaignService = CampaignService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<News>(
        future: campaignService.getCampaignData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Failed to load campaign data ${snapshot.error}'),
            );
          } else {
            final news = snapshot.data!;
            if (news.data.isEmpty) {
              return const Center(
                child: Text('No campaign data available.'),
              );
            } else {
              final datum1 = news.data[1]; // Ambil data dengan indeks ke-0
              final datum2 = news.data[2]; // Ambil data dengan indeks ke-1
              final datum31 = news.data[4];
              return Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: SafeArea(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 78,
                                width: 410,
                                color: const Color(0xffFFFFFF),
                              ),
                              Column(
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: 48,
                                          width: 276,
                                          decoration: BoxDecoration(
                                            color: const Color(0XFFF9FAFB),
                                            borderRadius:
                                                BorderRadius.circular(56),
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Cari',
                                              prefixIcon:
                                                  const Icon(Icons.search),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(23),
                                                borderSide: BorderSide.none,
                                              ),
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
                                              Icons.notifications_outlined,
                                              color: AppColors.arrowColor,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const BookmarkScreen(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: const BoxDecoration(
                                              color: AppColors.primaryColor,
                                              shape: BoxShape.circle,
                                            ),
                                            child: const Icon(
                                              Icons.bookmark_border,
                                              color: AppColors.arrowColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 20),
                                        Container(
                                          padding: const EdgeInsets.all(20),
                                          alignment: Alignment.center,
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: const Color(0XFFE0EAFF),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Column(children: [
                                            Stack(
                                              children: [
                                                Center(
                                                  child: SizedBox(
                                                    width: 600,
                                                    height: 200,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      child: Image.network(
                                                        datum1.image,
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
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                          height: 130),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          const SizedBox(
                                                              width: 8),
                                                          Container(
                                                            width: 75,
                                                            height: 25,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          32.0),
                                                              color:
                                                                  Colors.white,
                                                              border:
                                                                  Border.all(
                                                                color: const Color(
                                                                    0xFF444CE7),
                                                              ),
                                                            ),
                                                            child: Center(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  const Icon(
                                                                    Icons
                                                                        .verified,
                                                                    color: Color(
                                                                        0xFF444CE7),
                                                                    size: Checkbox
                                                                        .width,
                                                                  ),
                                                                  Text(
                                                                    datum2
                                                                        .organizer
                                                                        .name,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: GoogleFonts
                                                                        .inter(
                                                                      color: const Color(
                                                                          0xFF444CE7),
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 8),
                                                            width: 90,
                                                            height: 25,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          32.0),
                                                              color:
                                                                  Colors.white,
                                                              border:
                                                                  Border.all(
                                                                color: const Color(
                                                                    0xFF444CE7),
                                                              ),
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                datum1.type,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  color: const Color(
                                                                      0xFF444CE7),
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
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
                                              alignment: Alignment.centerLeft,
                                              margin: const EdgeInsets.only(
                                                  right: 140),
                                              child: Text(
                                                datum1.title,
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  right: 16),
                                              child: Text(
                                                datum1.description,
                                                style: GoogleFonts.inter(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            const SizedBox(height: 16),
                                            SizedBox(
                                              width: 500,
                                              height: 44,
                                              child: TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            DonationScreen()),
                                                  );
                                                },
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                          Color>(
                                                    const Color(0xFFE0EAFF),
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              32.0),
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  'Lihat Selengkapnya',
                                                  style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: ColorStyle()
                                                        .primaryblue,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        const Divider(),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Program dan Layanan',
                                            style: GoogleFonts.inter(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 12),
                                        ProgamListHome(),
                                        const Divider(),
                                        const SizedBox(height: 12),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Galang dana',
                                              style: GoogleFonts.inter(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const DonationScreen()),
                                                );
                                              },
                                              child: Text(
                                                'LIHAT SEMUA',
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color:
                                                      ColorStyle().primaryblue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 12),
                                        Container(
                                          padding: const EdgeInsets.all(16),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: const Color(0XFFFEE4E2),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24),
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
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        child: Image.asset(
                                                          "assets/bookmark (2).png",
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
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Container(
                                                              height: 36,
                                                              width: 36,
                                                              decoration: const BoxDecoration(
                                                                  color: Color(
                                                                      0xFFEEF4FF),
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              50))),
                                                              child: const Icon(
                                                                Icons
                                                                    .bookmark_border,
                                                                color: Color(
                                                                    0xFF444CE7),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            height: 130),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: 54,
                                                              height: 22,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            32.0),
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Center(
                                                                child: Text(
                                                                  'Umum',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    color: const Color(
                                                                        0xFF444CE7),
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                width: 8),
                                                            Container(
                                                              width: 110,
                                                              height: 22,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            32.0),
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Center(
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    const Icon(
                                                                      Icons
                                                                          .verified,
                                                                      color: Color(
                                                                          0xFF444CE7),
                                                                      size: Checkbox
                                                                          .width,
                                                                    ),
                                                                    Text(
                                                                      datum1
                                                                          .organizer
                                                                          .name,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: GoogleFonts
                                                                          .inter(
                                                                        color: const Color(
                                                                            0xFF444CE7),
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w500,
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
                                                              const DetailDonationScreen()),
                                                    );
                                                  },
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                      const Color(0xFFECFDF3),
                                                    ),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32.0),
                                                      ),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    '1 Aksi = Rp${datum2.totalActionDonation.toString()}',
                                                    style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12,
                                                      color: const Color(
                                                          0xFF039855),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    right: 30),
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  datum2.title,
                                                  style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                              const SizedBox(height: 12),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Rp${datum2.targetDonation.toString()}',
                                                    style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  Text(
                                                    '72%',
                                                    style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16,
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 8),
                                              const LinearProgressIndicator(
                                                backgroundColor:
                                                    Color(0XFFFEF3F2),
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
                                                              const DetailDonateScreen()),
                                                    );
                                                  },
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                      const Color(0xFFFEF3F2),
                                                    ),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32.0),
                                                      ),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Donasi sekarang',
                                                    style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                      color: const Color(
                                                          0xFFD92D20),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                        const Divider(),
                                        const SizedBox(height: 12),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Volunteer',
                                              style: GoogleFonts.inter(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const VolunteerScreen()),
                                                );
                                              },
                                              child: Text(
                                                'LIHAT SEMUA',
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color:
                                                      ColorStyle().primaryblue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 16),
                                        Container(
                                          padding: const EdgeInsets.all(20),
                                          alignment: Alignment.center,
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: const Color(0XFFFEE4E2),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24),
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
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
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
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                              width: 100,
                                                              height: 22,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            32.0),
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              child: Center(
                                                                child: Text(
                                                                  'SEGERA TUTUP',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 36,
                                                              width: 36,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                color: Color(
                                                                    0xFFE0EAFF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .all(
                                                                  Radius
                                                                      .circular(
                                                                          50),
                                                                ),
                                                              ),
                                                              child: const Icon(
                                                                Icons
                                                                    .bookmark_border,
                                                                color: Color(
                                                                    0xFF444CE7),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            height: 130),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: 100,
                                                              height: 25,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            32.0),
                                                                color: ColorStyle()
                                                                    .buttonColor,
                                                              ),
                                                              child: Center(
                                                                child: Text(
                                                                  datum31
                                                                      .category
                                                                      .name,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    color: const Color(
                                                                        0xFF444CE7),
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                width: 8),
                                                            Container(
                                                              width: 100,
                                                              height: 25,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            32.0),
                                                                color: ColorStyle()
                                                                    .buttonColor,
                                                              ),
                                                              child: Center(
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    const Icon(
                                                                      Icons
                                                                          .verified,
                                                                      color: Color(
                                                                          0xFF444CE7),
                                                                      size: Checkbox
                                                                          .width,
                                                                    ),
                                                                    Text(
                                                                      datum31
                                                                          .organizer
                                                                          .name,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: GoogleFonts
                                                                          .inter(
                                                                        color: const Color(
                                                                            0xFF444CE7),
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w500,
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
                                                margin: const EdgeInsets.only(
                                                    right: 236),
                                                alignment: Alignment.centerLeft,
                                                width: 180,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: ColorStyle()
                                                        .buttonColor,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          32.0),
                                                  color: ColorStyle()
                                                      .backgroundfield,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Icon(
                                                      Icons
                                                          .location_on_outlined,
                                                      color: Color(0xFF444CE7),
                                                      size: Checkbox.width,
                                                    ),
                                                    Flexible(
                                                      child: Text(
                                                        datum31.location,
                                                        style:
                                                            GoogleFonts.inter(
                                                          color: const Color(
                                                              0xFF444CE7),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        maxLines: 1,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Container(
                                                alignment: Alignment.centerLeft,
                                                margin: const EdgeInsets.only(
                                                    right: 140),
                                                child: Text(
                                                  datum31.title,
                                                  style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    right: 16),
                                                child: Text(
                                                  datum31.description,
                                                  style: GoogleFonts.inter(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              const SizedBox(height: 16),
                                              SizedBox(
                                                width: 500,
                                                height: 44,
                                                child: TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              DetailVolunteerHome()),
                                                    );
                                                  },
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                      const Color(0xFFFEF3F2),
                                                    ),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32.0),
                                                      ),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Daftar',
                                                    style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                      color: const Color(
                                                          0xFFD92D20),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                        const Divider(),
                                        const SizedBox(height: 12),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Berita Terbaru',
                                              style: GoogleFonts.inter(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Berita()),
                                                );
                                              },
                                              child: Text(
                                                'LIHAT SEMUA',
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color:
                                                      ColorStyle().primaryblue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 12),
                                        const BeritaHomeWidget(),
                                        const SizedBox(height: 16),
                                        const Divider(),
                                        const SizedBox(height: 12),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Video Promosi',
                                              style: GoogleFonts.inter(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          AllVideoScreen()),
                                                );
                                              },
                                              child: Text(
                                                'LIHAT SEMUA',
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color:
                                                      ColorStyle().primaryblue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 24),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              for (var i = 0;
                                                  i < videoUrls.length;
                                                  i++)
                                                if (videoUrls[i] != null &&
                                                    _controllers.length > i &&
                                                    _controllers[i]!
                                                        .value
                                                        .isInitialized)
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 8.0),
                                                    child: Stack(
                                                      children: [
                                                        SizedBox(
                                                          height: 240,
                                                          width: 184,
                                                          child: AspectRatio(
                                                            aspectRatio:
                                                                _controllers[i]!
                                                                    .value
                                                                    .aspectRatio,
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                              child: VideoPlayer(
                                                                  _controllers[
                                                                      i]!),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned.fill(
                                                          child: Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                              width: 50,
                                                              height: 50,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.3),
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: IconButton(
                                                                color: Colors
                                                                    .white,
                                                                onPressed: () =>
                                                                    _togglePlayPause(
                                                                        i),
                                                                icon:
                                                                    _getPlayPauseIcon(
                                                                        i),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                              // Rest of the UI code...
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                        const Divider(),
                                        const SizedBox(height: 12),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Organizer',
                                              style: GoogleFonts.inter(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const OrganizationScreen()),
                                                );
                                              },
                                              child: Text(
                                                'LIHAT SEMUA',
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color:
                                                      ColorStyle().primaryblue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 24),
                                        Container(
                                          width: 396,
                                          height: 330,
                                          alignment: Alignment.center,
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              side: BorderSide(
                                                width: 1,
                                                color: ColorStyle().kotakColor,
                                              ),
                                            ),
                                            child: Column(
                                              children: [
                                                Stack(
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.all(
                                                              12),
                                                      child: SizedBox(
                                                        width: 372,
                                                        height: 148,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                          child: Image.network(
                                                            datum2.organizer
                                                                .photoUrl,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 12),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      const Icon(
                                                        Icons.verified,
                                                        color:
                                                            Color(0xFF444CE7),
                                                        size: Checkbox.width,
                                                      ),
                                                      const SizedBox(width: 5),
                                                      Text(
                                                        datum2.organizer.name,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            GoogleFonts.inter(
                                                          color: const Color(
                                                              0xFF444CE7),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 12, right: 12),
                                                  child: Text(
                                                    datum2.description,
                                                    style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                  ),
                                                ),
                                                const SizedBox(height: 16),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 12,
                                                      right: 12,
                                                      bottom: 16),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      SizedBox(
                                                        width: 164,
                                                        height: 44,
                                                        child: TextButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const UnileverProfileScreen()),
                                                            );
                                                          },
                                                          style: ButtonStyle(
                                                            backgroundColor:
                                                                MaterialStateProperty
                                                                    .all<Color>(
                                                              ColorStyle()
                                                                  .buttonColor,
                                                            ),
                                                            shape: MaterialStateProperty
                                                                .all<
                                                                    RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            32.0),
                                                              ),
                                                            ),
                                                          ),
                                                          child: Text(
                                                            'Kunjungi profil',
                                                            style: GoogleFonts
                                                                .inter(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 14,
                                                              color: ColorStyle()
                                                                  .primaryblue,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 164,
                                                        height: 44,
                                                        child: GestureDetector(
                                                          onTap: toggleFollow,
                                                          child: Container(
                                                            height: 40,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: isFollowing
                                                                  ? AppColors
                                                                      .Button
                                                                  : AppColors
                                                                      .arrowColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  isFollowing
                                                                      ? 'Mengikuti'
                                                                      : 'Ikuti',
                                                                  style:
                                                                      TextStyle(
                                                                    color: isFollowing
                                                                        ? Colors
                                                                            .blue
                                                                        : AppColors
                                                                            .Button,
                                                                  ),
                                                                ),
                                                              ],
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
                                        const SizedBox(height: 16),
                                        Container(
                                          width: 396,
                                          height: 330,
                                          alignment: Alignment.center,
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              side: BorderSide(
                                                width: 1,
                                                color: ColorStyle().kotakColor,
                                              ),
                                            ),
                                            child: Column(
                                              children: [
                                                Stack(
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.all(
                                                              12),
                                                      child: SizedBox(
                                                        width: 372,
                                                        height: 148,
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                            child: Image
                                                                .network(datum1
                                                                    .organizer
                                                                    .photoUrl)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 12),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      const Icon(
                                                        Icons.verified,
                                                        color:
                                                            Color(0xFF444CE7),
                                                        size: Checkbox.width,
                                                      ),
                                                      const SizedBox(width: 5),
                                                      Text(
                                                        datum1.organizer.name,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            GoogleFonts.inter(
                                                          color: const Color(
                                                              0xFF444CE7),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 12, right: 12),
                                                  child: Text(
                                                    datum1.description,
                                                    style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                  ),
                                                ),
                                                const SizedBox(height: 16),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 12,
                                                      right: 12,
                                                      bottom: 16),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      SizedBox(
                                                        width: 182,
                                                        height: 44,
                                                        child: TextButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const HyundaiProfileScreen()),
                                                            );
                                                          },
                                                          style: ButtonStyle(
                                                            backgroundColor:
                                                                MaterialStateProperty
                                                                    .all<Color>(
                                                              ColorStyle()
                                                                  .buttonColor,
                                                            ),
                                                            shape: MaterialStateProperty
                                                                .all<
                                                                    RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            32.0),
                                                              ),
                                                            ),
                                                          ),
                                                          child: Text(
                                                            'Kunjungi profil',
                                                            style: GoogleFonts
                                                                .inter(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 14,
                                                              color: ColorStyle()
                                                                  .primaryblue,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 164,
                                                        height: 44,
                                                        child: GestureDetector(
                                                          onTap: toggleFollow2,
                                                          child: Container(
                                                            height: 40,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: isFollowing2
                                                                  ? AppColors
                                                                      .Button
                                                                  : AppColors
                                                                      .arrowColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  isFollowing2
                                                                      ? 'Mengikuti'
                                                                      : 'Ikuti',
                                                                  style:
                                                                      TextStyle(
                                                                    color: isFollowing2
                                                                        ? Colors
                                                                            .blue
                                                                        : AppColors
                                                                            .Button,
                                                                  ),
                                                                ),
                                                              ],
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
