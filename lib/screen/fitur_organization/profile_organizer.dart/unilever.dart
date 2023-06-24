// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/fitur_organization/galang_dana.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';
import 'package:sociops/screen/fitur_organization/volunteer.dart';

import '../../../model/model_campaign.dart';
import '../../../service/campaign_service/campaign_service.dart';

class UnileverProfileScreen extends StatefulWidget {
  const UnileverProfileScreen({super.key});

  @override
  State<UnileverProfileScreen> createState() => _UnileverProfileScreenState();
}

class _UnileverProfileScreenState extends State<UnileverProfileScreen> {
  final CampaignService campaignService = CampaignService();
  bool isFollowing = false;

  void toggleFollow() {
    setState(() {
      isFollowing = !isFollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Unilever',
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
      body: FutureBuilder<News>(
        future: campaignService.getCampaignData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Failed to load campaign data ${snapshot.error}'),
            );
          } else {
            final news = snapshot.data!;
            if (news.data.isEmpty) {
              return Center(
                child: Text('No campaign data available.'),
              );
            } else {
              final datum3 = news.data[2]; // Ambil satu data pertama dari list
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Column(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(datum3.organizer.photoUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      datum3.organizer.name,
                                      style: Styles.result3,
                                    ),
                                    const SizedBox(width: 8),
                                    const SizedBox(
                                      width: 25,
                                      height: 25,
                                      child: Icon(
                                        Icons.verified,
                                        color: AppColors.arrowColor,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          '12',
                                          style: Styles.resultTextStyle,
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'Campaign',
                                          style: Styles.resultTextStyle,
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 16),
                                    Column(
                                      children: [
                                        Text(
                                          '32',
                                          style: Styles.resultTextStyle,
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'Diikuti',
                                          style: Styles.resultTextStyle,
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 16),
                                    Column(
                                      children: [
                                        Text(
                                          '12',
                                          style: Styles.resultTextStyle,
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'Mengikuti',
                                          style: Styles.resultTextStyle,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                          GestureDetector(
                            onTap: toggleFollow,
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: isFollowing
                                    ? AppColors.Button
                                    : AppColors.arrowColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(width: 8),
                                  Text(
                                    isFollowing ? 'Mengikuti' : 'Ikuti',
                                    style: TextStyle(
                                      color: isFollowing
                                          ? Colors.blue
                                          : AppColors.Button,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'About',
                              style: Styles.resultTextStyle,
                            ),
                          ),
                          const SizedBox(height: 8),
                           Text(
                           datum3.description,
                            style: Styles.resultTextStyle,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Column(
                        children: [
                          SizedBox(
                            width: 396,
                            height: 64,
                            child: TextButton.icon(
                              icon: Image.asset('assets/galang dana.png'),
                              style: ButtonStyle(
                                alignment: Alignment.centerLeft,
                                padding: const MaterialStatePropertyAll(
                                  EdgeInsets.all(16),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.transparent,
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    side: const BorderSide(
                                      color: Color(0XFFE0EAFF),
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const GalangDana()),
                                );
                              },
                              label: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Galang dana',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const GalangDana()),
                                      );
                                    },
                                    icon: const Icon(Icons.navigate_next),
                                    color: const Color(0XFF444CE7),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 396,
                            height: 64,
                            child: TextButton.icon(
                              icon: Image.asset('assets/volunteerr.png'),
                              style: ButtonStyle(
                                alignment: Alignment.centerLeft,
                                padding: const MaterialStatePropertyAll(
                                  EdgeInsets.all(16),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.transparent,
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    side: const BorderSide(
                                      color: Color(0XFFE0EAFF),
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Volunteer()),
                                );
                              },
                              label: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Volunteer',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Volunteer()),
                                      );
                                    },
                                    icon: const Icon(Icons.navigate_next),
                                    color: const Color(0XFF444CE7),
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
              );
            }
          }
        },
      ),
    );
  }
}
