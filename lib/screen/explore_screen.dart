import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/model_campaign.dart';
import '../service/campaign_service/campaign_service.dart';
import 'fitur_home/componen_home/detail_explore.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<ExploreScreen> {
  final TextEditingController searchController = TextEditingController();
  final CampaignService campaignService = CampaignService();
  bool isSorted = false;
  List<Datum> allCampaigns = [];
  List<Datum> filteredCampaigns = [];
  @override
  void initState() {
    super.initState();
    _loadCampaignData();
  }

  Future<void> _loadCampaignData() async {
    final campaign = await campaignService.getCampaignData();
    setState(() {
      allCampaigns = campaign.data;
      filteredCampaigns = campaign.data;
    });
  }

  void _filterCampaigns(String searchText) {
    setState(() {
      filteredCampaigns = allCampaigns
          .where((campaign) =>
              campaign.title.toLowerCase().startsWith(searchText.toLowerCase()))
          .toList();
    });
  }

  void _openCampaignDetail(Datum campaign) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailEksplore(
          datum: campaign,
          categoryName: campaign.category.name,
          description: campaign.description,
          image: campaign.image,
          location: campaign.location,
          organizerName: campaign.organizer.name,
          organizerPhotoUrl: campaign.organizer.photoUrl,
          title: campaign.title,
          totalActiondonation: campaign.totalActionDonation.toString(),
          totalAmountCollection: campaign.targetDonation.toString(),
          video: campaign.video,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Eksplore',
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
            final campaign = snapshot.data!;
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffF9FAFB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: searchController,
                      onChanged: (value) {
                        _filterCampaigns(value);
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        labelText: 'Cari',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: filteredCampaigns.length,
                    itemBuilder: (context, index) {
                      Datum datum = filteredCampaigns[index];
                      return Padding(
                        padding: const EdgeInsets.all(0),
                        child: GestureDetector(
                          onTap: () {
                            _openCampaignDetail(datum);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(20),
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
                                          height: 220,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: Image.network(
                                              datum.image,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 8,
                                        left: 8,
                                        right: 8,
                                        bottom: 8,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            32.0),
                                                    color: Colors.red,
                                                  ),
                                                  child: const FittedBox(
                                                    fit: BoxFit.contain,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                        'Sedang Dibuka',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 36,
                                                  width: 36,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color(0xFFEEF4FF),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          50))),
                                                  child: const Icon(
                                                    Icons.bookmark_border,
                                                    color: Color(0xFF444CE7),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 130),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 100,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              32.0),
                                                      color: Colors.white,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        datum.category.name,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            GoogleFonts.inter(
                                                          color: const Color(
                                                              0xFF444CE7),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Container(
                                                    width: 100,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              32.0),
                                                      color: Colors.white,
                                                    ),
                                                    child: Center(
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          const SizedBox(
                                                              width: 2),
                                                          const Icon(
                                                            Icons.verified,
                                                            color: Color(
                                                                0xFF444CE7),
                                                            size: 14,
                                                          ),
                                                          Text(
                                                            datum
                                                                .organizer.name,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: GoogleFonts
                                                                .inter(
                                                              color: const Color(
                                                                  0xFF444CE7),
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
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
                                                  DetailEksplore(
                                                    datum: datum,
                                                  )),
                                        );
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                          const Color(0xFFECFDF3),
                                        ),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(32.0),
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "1 Aksi = ${datum.totalActionDonation}",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: const Color(0xFF039855),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      datum.title,
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Rp${datum.targetDonation}",
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
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
                                                DetailEksplore(
                                              datum: datum,
                                              categoryName: datum.category.name,
                                              description: datum.description,
                                              image: datum.image,
                                              location: datum.location,
                                              organizerName:
                                                  datum.organizer.name,
                                              organizerPhotoUrl:
                                                  datum.organizer.photoUrl,
                                              title: datum.title,
                                              totalActiondonation: datum
                                                  .totalActionDonation
                                                  .toString(),
                                              totalAmountCollection: datum
                                                  .targetDonation
                                                  .toString(),
                                              video: datum.video,
                                            ),
                                          ),
                                        );
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                          const Color(0xFFFEF3F2),
                                        ),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(32.0),
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
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
