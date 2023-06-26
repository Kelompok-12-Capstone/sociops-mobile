// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class GalangDana extends StatelessWidget {
  const GalangDana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Hyundai galang dana',
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
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CustomFollowButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomFollowButton extends StatefulWidget {
  const CustomFollowButton({super.key});

  @override
  _CustomFollowButtonState createState() => _CustomFollowButtonState();
}

class _CustomFollowButtonState extends State<CustomFollowButton> {
  bool isFollowing = false;

  void toggleFollow() {
    setState(() {
      isFollowing = !isFollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                          "assets/hyundai.jpg",
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              height: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
                                color: Colors.red,
                              ),
                              child: const Center(
                                child: Text(
                                  'CLOSED SOON',
                                  textAlign: TextAlign.center,
                                  style: Styles.closed,
                                ),
                              ),
                            ),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFEEF4FF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
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
                              width: 54,
                              height: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
                                color: AppColors.backgroundColor,
                              ),
                              child: const Center(
                                child: Text(
                                  'Umum',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.arrowColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              width: 54,
                              height: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
                                color: AppColors.backgroundColor,
                              ),
                              child: const Center(
                                child: Text(
                                  'Online',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.arrowColor),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              width: 70,
                              height: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32.0),
                                color: AppColors.backgroundColor,
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.verified,
                                    color: Colors.blue,
                                    size: 12,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    'Hyundai',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.arrowColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 12),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 54,
                        height: 22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32.0),
                          color: AppColors.backgroundColor,
                        ),
                        child: const Center(
                          child: Text(
                            'Online',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w700,
                              color: AppColors.arrowColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 100,
                        height: 22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32.0),
                          color: AppColors.backgroundColor,
                        ),
                        child: const Center(
                          child: Text(
                            'On Social Media',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w700,
                              color: AppColors.arrowColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                  'Gerakan #SampaiTujuanDenganAman, Hyundai Bekerjasama dengan Kepolisian Indonesia',
                  style: Styles.resultTextStyle),
              const SizedBox(height: 8),
              const SizedBox(
                height: 20,
                child: Text(
                  'Kegiatan kampanye online yang diadakan oleh Perusahaan Hyundai',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF555E6C),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: toggleFollow,
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: isFollowing
                        ? const Color.fromARGB(255, 241, 172, 172)
                        : const Color.fromARGB(255, 250, 10, 10),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 8),
                      Text(
                        isFollowing ? 'Joined' : 'Join',
                        style: TextStyle(
                          color: isFollowing ? Colors.red : AppColors.Button,
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
    );
  }
}
