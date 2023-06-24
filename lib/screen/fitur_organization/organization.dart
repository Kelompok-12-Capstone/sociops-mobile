import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/fitur_organization/profile_organizer.dart/hyundai.dart';
import 'package:sociops/screen/fitur_organization/profile_organizer.dart/skilledup.dart';
import 'package:sociops/screen/fitur_organization/profile_organizer.dart/unilever.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

import '../../model/model_campaign.dart';
import '../../service/campaign_service/campaign_service.dart';

class OrganizationScreen extends StatefulWidget {
  const OrganizationScreen({super.key});

  @override
  State<OrganizationScreen> createState() => _OrganizationScreenState();
}

class _OrganizationScreenState extends State<OrganizationScreen> {
  final CampaignService campaignService = CampaignService();
  bool isFollowing1 = false;
  bool isFollowing2 = false;
  bool isFollowing3 = false;

  void toggleFollow1() {
    setState(() {
      isFollowing1 = !isFollowing1;
    });
  }

  void toggleFollow2() {
    setState(() {
      isFollowing2 = !isFollowing2;
    });
  }

  void toggleFollow3() {
    setState(() {
      isFollowing3 = !isFollowing3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Organizer',
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
              final datum1 = news.data[0];
              final datum2 = news.data[1];
              final datum3 = news.data[2]; // Ambil satu data pertama dari list
              return ListView(children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        height: 380,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: AppColors.Kotak,
                            width: 1.0,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    datum1.organizer.photoUrl,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: const BoxDecoration(
                                        color: AppColors.arrowColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Text(
                                      datum1.organizer.name,
                                      style: Styles.Result2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                datum1.description,
                                style: Styles.resultTextStyle,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SkilledUpProfileScreen()),
                                      );
                                    },
                                    child: Container(
                                      height: 40,
                                      margin: const EdgeInsets.only(
                                          left: 16, right: 8),
                                      decoration: BoxDecoration(
                                        color: AppColors.Button,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(width: 8),
                                          Text(
                                            'Kunjungi Profil',
                                            style: TextStyle(
                                              color: AppColors.arrowColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: toggleFollow1,
                                    child: Container(
                                      height: 40,
                                      margin: const EdgeInsets.only(
                                          right: 16, left: 8),
                                      decoration: BoxDecoration(
                                        color: isFollowing1
                                            ? AppColors.Button
                                            : AppColors.arrowColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(width: 8),
                                          Text(
                                            isFollowing1
                                                ? 'Mengikuti'
                                                : 'Ikuti',
                                            style: TextStyle(
                                              color: isFollowing1
                                                  ? Colors.white
                                                  : AppColors.Button,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        height: 380,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: AppColors.Kotak,
                            width: 1.0,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    datum2.organizer.photoUrl,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: const BoxDecoration(
                                        color: AppColors.arrowColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Text(
                                      datum2.organizer.name,
                                      style: Styles.Result2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                datum1.description,
                                style: Styles.resultTextStyle,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HyundaiProfileScreen()),
                                      );
                                    },
                                    child: Container(
                                      height: 40,
                                      margin: const EdgeInsets.only(
                                          left: 16, right: 8),
                                      decoration: BoxDecoration(
                                        color: AppColors.Button,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(width: 8),
                                          Text(
                                            'Kunjungi Profil',
                                            style: TextStyle(
                                              color: AppColors.arrowColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: toggleFollow2,
                                    child: Container(
                                      height: 40,
                                      margin: const EdgeInsets.only(
                                          right: 16, left: 8),
                                      decoration: BoxDecoration(
                                        color: isFollowing2
                                            ? AppColors.Button
                                            : AppColors.arrowColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(width: 8),
                                          Text(
                                            isFollowing2
                                                ? 'Mengikuti'
                                                : 'Ikuti',
                                            style: TextStyle(
                                              color: isFollowing2
                                                  ? Colors.white
                                                  : AppColors.Button,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        height: 380,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: AppColors.Kotak,
                            width: 1.0,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    datum3.organizer.photoUrl,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: const BoxDecoration(
                                        color: AppColors.arrowColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Text(
                                      datum3.organizer.name,
                                      style: Styles.Result2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                datum3.description,
                                style: Styles.resultTextStyle,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const UnileverProfileScreen()),
                                      );
                                    },
                                    child: Container(
                                      height: 40,
                                      margin: const EdgeInsets.only(
                                          left: 16, right: 8),
                                      decoration: BoxDecoration(
                                        color: AppColors.Button,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(width: 8),
                                          Text(
                                            'Kunjungi Profil',
                                            style: TextStyle(
                                              color: AppColors.arrowColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: toggleFollow3,
                                    child: Container(
                                      height: 40,
                                      margin: const EdgeInsets.only(
                                          right: 16, left: 8),
                                      decoration: BoxDecoration(
                                        color: isFollowing3
                                            ? AppColors.Button
                                            : AppColors.arrowColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(width: 8),
                                          Text(
                                            isFollowing3
                                                ? 'Mengikuti'
                                                : 'Ikuti',
                                            style: TextStyle(
                                              color: isFollowing3
                                                  ? Colors.white
                                                  : AppColors.Button,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]);
            }
          }
        },
      ),
    );
  }
}
