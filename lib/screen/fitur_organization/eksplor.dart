// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/fitur_donation/detail_donate_screen.dart';
import 'package:sociops/screen/fitur_donation/detail_donation_screen.dart';
import 'package:sociops/style/color_style.dart';

class CategoryBox extends StatefulWidget {
  final String text;
  final Color color;
  final double width;

  const CategoryBox({
    super.key,
    required this.text,
    required this.color,
    this.width = 80,
  });

  @override
  _CategoryBoxState createState() => _CategoryBoxState();
}

class _CategoryBoxState extends State<CategoryBox> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        width: widget.width,
        decoration: BoxDecoration(
          color: _isSelected ? widget.color : Colors.transparent,
          borderRadius: BorderRadius.circular(26),
          border: Border.all(
            color: AppColors.arrowColor,
            width: 1.0,
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: _isSelected ? Colors.white : AppColors.arrowColor,
            ),
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
    return Container(
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
                          child: Center(
                            child: Text(
                              'CLOSED SOON',
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
                          width: 54,
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.0),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'Online',
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
                            borderRadius: BorderRadius.circular(32.0),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.verified,
                                  color: Color(0xFF444CE7),
                                  size: 14,
                                ),
                                Text(
                                  'Hyundai',
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailDonationScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFFECFDF3),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
            'Gerakan #SampaiTujuanDenganAman, Hyundai Bekerjasama dengan Kepolisian Indonesia',
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
                    builder: (context) => const DetailDonateScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFFFEF3F2),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
    );
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Container(
    //       padding: const EdgeInsets.all(16),
    //       alignment: Alignment.center,
    //       decoration: BoxDecoration(
    //         border: Border.all(
    //           color: const Color(0XFFFEE4E2),
    //         ),
    //         borderRadius: BorderRadius.circular(24),
    //       ),
    //       child: Column(
    //         children: [
    //           Stack(
    //             children: [
    //               Center(
    //                 child: SizedBox(
    //                   width: 400,
    //                   height: 200,
    //                   child: ClipRRect(
    //                     borderRadius: BorderRadius.circular(20),
    //                     child: Image.network(
    //                       "assets/hyundai.jpg",
    //                       fit: BoxFit.cover,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               Positioned(
    //                 left: 8,
    //                 right: 8,
    //                 bottom: 8,
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       children: [
    //                         Container(
    //                           width: 100,
    //                           height: 22,
    //                           decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(32.0),
    //                             color: Colors.red,
    //                           ),
    //                           child: const Center(
    //                             child: Text(
    //                               'CLOSED SOON',
    //                               textAlign: TextAlign.center,
    //                               style: Styles.closed,
    //                             ),
    //                           ),
    //                         ),
    //                         Container(
    //                           height: 36,
    //                           width: 36,
    //                           decoration: const BoxDecoration(
    //                               color: Color(0xFFEEF4FF),
    //                               borderRadius:
    //                                   BorderRadius.all(Radius.circular(50))),
    //                           child: const Icon(
    //                             Icons.bookmark_border,
    //                             color: Color(0xFF444CE7),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                     const SizedBox(height: 130),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.start,
    //                       children: [
    //                         Container(
    //                           width: 54,
    //                           height: 22,
    //                           decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(32.0),
    //                             color: AppColors.backgroundColor,
    //                           ),
    //                           child: const Center(
    //                             child: Text(
    //                               'Umum',
    //                               textAlign: TextAlign.center,
    //                               style: TextStyle(
    //                                 fontSize: 12,
    //                                 fontFamily: "Avenir",
    //                                 fontWeight: FontWeight.w700,
    //                                 color: AppColors.arrowColor,
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                         const SizedBox(width: 12),
    //                         Container(
    //                           width: 54,
    //                           height: 22,
    //                           decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(32.0),
    //                             color: AppColors.backgroundColor,
    //                           ),
    //                           child: const Center(
    //                             child: Text(
    //                               'Online',
    //                               textAlign: TextAlign.center,
    //                               style: TextStyle(
    //                                   fontSize: 12,
    //                                   fontFamily: "Avenir",
    //                                   fontWeight: FontWeight.w700,
    //                                   color: AppColors.arrowColor),
    //                             ),
    //                           ),
    //                         ),
    //                         const SizedBox(width: 12),
    //                         Container(
    //                           width: 70,
    //                           height: 22,
    //                           decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(32.0),
    //                             color: AppColors.backgroundColor,
    //                           ),
    //                           child: const Row(
    //                             children: [
    //                               Icon(
    //                                 Icons.verified,
    //                                 color: Colors.blue,
    //                                 size: 12,
    //                               ),
    //                               SizedBox(width: 4),
    //                               Text(
    //                                 'Hyundai',
    //                                 textAlign: TextAlign.center,
    //                                 style: TextStyle(
    //                                     fontSize: 12,
    //                                     fontFamily: "Avenir",
    //                                     fontWeight: FontWeight.w700,
    //                                     color: AppColors.arrowColor),
    //                               ),
    //                             ],
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //           Row(
    //             children: [
    //               const SizedBox(width: 12),
    //               Padding(
    //                 padding: const EdgeInsets.only(top: 8),
    //                 child: Center(
    //                   child: Container(
    //                     width: 250,
    //                     height: 22,
    //                     decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(32.0),
    //                       color: const Color.fromARGB(255, 212, 245, 212),
    //                     ),
    //                     child: const Center(
    //                       child: Text(
    //                         '1 Aksi = Rp10.000',
    //                         style: TextStyle(
    //                           fontSize: 12,
    //                           fontFamily: "Avenir",
    //                           fontWeight: FontWeight.w700,
    //                           color: Color.fromARGB(255, 19, 245, 49),
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //           const SizedBox(height: 20),
    //           const Text(
    //               'Gerakan #SampaiTujuanDenganAman, Hyundai Bekerjasama dengan Kepolisian Indonesia',
    //               style: Styles.resultTextStyle),
    //           const SizedBox(height: 12),
    //           const Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Text('Rp233.461.250', style: Styles.resultTextStyle),
    //               Text('72%', style: Styles.resultTextStyle),
    //             ],
    //           ),
    //           const SizedBox(height: 8),
    //           const LinearProgressIndicator(
    //             backgroundColor: Color(0XFFFEF3F2),
    //             color: Color(0XFFD92D20),
    //             value: 72 / 100,
    //             minHeight: 12,
    //           ),
    //           const SizedBox(height: 16),
    //           InkWell(
    //             onTap: toggleFollow,
    //             child: Container(
    //               height: 40,
    //               margin: const EdgeInsets.symmetric(horizontal: 16),
    //               decoration: BoxDecoration(
    //                 color: const Color.fromARGB(255, 247, 32, 32),
    //                 borderRadius: BorderRadius.circular(20),
    //               ),
    //               child: const Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   SizedBox(width: 8),
    //                   Text(
    //                     'Donasi Sekarang',
    //                     style: TextStyle(
    //                       color: Colors.white,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}
