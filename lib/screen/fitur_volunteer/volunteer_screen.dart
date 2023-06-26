import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:sociops/screen/fitur_volunteer/detail_volunteer_screen.dart';

import '../../model/model_volunteer.dart';

import '../../service/campaign_service/volunteer_service.dart';

class VolunteerScreen extends StatefulWidget {
  const VolunteerScreen({super.key});

  @override
  State<VolunteerScreen> createState() => _VolunteerScreenState();
}

class _VolunteerScreenState extends State<VolunteerScreen> {
  final VolunteerService volunteer = VolunteerService();
  bool cekbox = false;
  bool isSorted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Volunteer',
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
        child: FutureBuilder<Volunteer>(
          future: volunteer.getVolunteerData(),
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
              final volntr = snapshot.data!;
              return ListView.builder(
                itemCount: volntr.data.length,
                itemBuilder: (context, index) {
                  DatumVolunteer datum = volntr.data[index];
                  return Padding(
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
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      datum.image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 2,
                                left: 20,
                                right: 20,
                                bottom: 12,
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
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50))),
                                          child: const Icon(
                                            Icons.bookmark_border,
                                            color: Color(0xFF444CE7),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 130),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 22,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(32.0),
                                              color: Colors.white,
                                            ),
                                            child: Center(
                                              child: Text(
                                                datum.category.name,
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.inter(
                                                  color:
                                                      const Color(0xFF444CE7),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
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
                                                  BorderRadius.circular(32.0),
                                              color: Colors.white,
                                            ),
                                            child: Center(
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  const SizedBox(width: 2),
                                                  const Icon(
                                                    Icons.verified,
                                                    color: Color(0xFF444CE7),
                                                    size: 14,
                                                  ),
                                                  Text(
                                                    datum.organizer.name,
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.inter(
                                                      color: const Color(
                                                          0xFF444CE7),
                                                      fontSize: 12,
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
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          // SizedBox(
                          //   width: 372,
                          //   height: 30,
                          //   child: TextButton(
                          //     onPressed: () {
                          //       Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) =>
                          //               const DetailDonationScreen(),
                          //         ),
                          //       );
                          //     },
                          //     style: ButtonStyle(
                          //       backgroundColor:
                          //           MaterialStateProperty.all<Color>(
                          //         const Color(0xFFECFDF3),
                          //       ),
                          //       shape: MaterialStateProperty.all<
                          //           RoundedRectangleBorder>(
                          //         RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(32.0),
                          //         ),
                          //       ),
                          //     ),
                          //     child: Text(
                          //       "1 Aksi = ${datum.totalActionDonation}",
                          //       style: GoogleFonts.inter(
                          //         fontWeight: FontWeight.w500,
                          //         fontSize: 12,
                          //         color: const Color(0xFF039855),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          const SizedBox(height: 8),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(right: 140),
                                  child: Text(
                                    datum.title,
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Container(
                                  alignment: Alignment.centerLeft,
                              
                                  child: ReadMoreText(
                                    datum.description,
                                    trimLength: 100,
                                    trimCollapsedText: 'readmore',
                                    trimExpandedText: 'less',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // const SizedBox(height: 12),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Text(
                          //       "Rp${datum.targetDonation}",
                          //       style: GoogleFonts.inter(
                          //         fontWeight: FontWeight.w400,
                          //         fontSize: 16,
                          //       ),
                          //     ),
                          //     Text(
                          //       '72%',
                          //       style: GoogleFonts.inter(
                          //         fontWeight: FontWeight.w500,
                          //         fontSize: 16,
                          //         color: Colors.red,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // const SizedBox(height: 8),
                          // const LinearProgressIndicator(
                          //   backgroundColor: Color(0XFFFEF3F2),
                          //   color: Color(0XFFD92D20),
                          //   value: 72 / 100,
                          //   minHeight: 12,
                          // ),
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
                                        DetailVolunteerFixScreen(
                                      datum: volntr,
                                      categoryName: datum.category.name,
                                      description: datum.description,
                                      image: datum.image,
                                      location: datum.location,
                                      organizerName: datum.organizer.name,
                                      organizerPhotoUrl:
                                          datum.organizer.photoUrl,
                                      title: datum.title,
                                      totalActiondonation:
                                          datum.totalActionDonation.toString(),
                                      totalAmountCollection:
                                          datum.targetDonation.toString(),
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
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                ),
                              ),
                              child: Text(
                                'Daftar',
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
                  );
                },
              );
            }
          },
        ),
      ),
      // bottomNavigationBar: BottomNavbarWidget(
      //   onTap: _changeSelectedNavbar,
      //   currentIndex: _selectedNavbar,
      // ),
    );
  }
}
