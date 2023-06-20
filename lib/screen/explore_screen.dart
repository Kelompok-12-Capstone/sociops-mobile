import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/fitur_donation/detail_donate_screen.dart';
import 'package:sociops/screen/fitur_donation/detail_donation_screen.dart';
import 'package:sociops/screen/fitur_organization/eksplor.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  String _selectedFilter = 'Day';
  bool isSorted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 48,
                            width: 270,
                            decoration: BoxDecoration(
                              color: const Color(0XFFF9FAFB),
                              borderRadius: BorderRadius.circular(56),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Cari',
                                prefixIcon: const Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(23),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSorted = !isSorted;
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: AppColors.primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                isSorted
                                    ? Icons.arrow_downward_rounded
                                    : Icons.arrow_upward_rounded,
                                color: AppColors.arrowColor,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Choose Filter',
                                            style:
                                                Styles.resultTextStyle.copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        const Text(
                                          'Date',
                                          style: Styles.resultTextStyle,
                                          textAlign: TextAlign.start,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _selectedFilter = 'Day';
                                                  });
                                                },
                                                child: SizedBox(
                                                  height: 35,
                                                  width:
                                                      20, // Mengatur tinggi kotak
                                                  child: CategoryBox(
                                                    text: 'Day',
                                                    color: _selectedFilter ==
                                                            'Day'
                                                        ? AppColors.arrowColor
                                                        : Colors.transparent,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _selectedFilter = 'Day';
                                                  });
                                                },
                                                child: SizedBox(
                                                  height: 35,
                                                  width:
                                                      20, // Mengatur tinggi kotak
                                                  child: CategoryBox(
                                                    text: 'Week',
                                                    color: _selectedFilter ==
                                                            'Day'
                                                        ? AppColors.arrowColor
                                                        : Colors.transparent,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _selectedFilter = 'Day';
                                                  });
                                                },
                                                child: SizedBox(
                                                  height: 35,
                                                  width:
                                                      20, // Mengatur tinggi kotak
                                                  child: CategoryBox(
                                                    text: 'Month',
                                                    color: _selectedFilter ==
                                                            'Day'
                                                        ? AppColors.arrowColor
                                                        : Colors.transparent,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _selectedFilter = 'Day';
                                                  });
                                                },
                                                child: SizedBox(
                                                  height: 35,
                                                  width:
                                                      20, // Mengatur tinggi kotak
                                                  child: CategoryBox(
                                                    text: 'Year',
                                                    color: _selectedFilter ==
                                                            'Day'
                                                        ? AppColors.arrowColor
                                                        : Colors.transparent,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 16),
                                        const Text(
                                          'Category',
                                          style: Styles.resultTextStyle,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _selectedFilter = 'Day';
                                                  });
                                                },
                                                child: SizedBox(
                                                  height: 35,
                                                  width:
                                                      20, // Mengatur tinggi kotak
                                                  child: CategoryBox(
                                                    text: 'General',
                                                    color: _selectedFilter ==
                                                            'Day'
                                                        ? AppColors.arrowColor
                                                        : Colors.transparent,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _selectedFilter = 'Day';
                                                  });
                                                },
                                                child: SizedBox(
                                                  height: 35,
                                                  width:
                                                      20, // Mengatur tinggi kotak
                                                  child: CategoryBox(
                                                    text: 'Education',
                                                    color: _selectedFilter ==
                                                            'Day'
                                                        ? AppColors.arrowColor
                                                        : Colors.transparent,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _selectedFilter = 'Day';
                                                  });
                                                },
                                                child: SizedBox(
                                                  height: 35,
                                                  width:
                                                      20, // Mengatur tinggi kotak
                                                  child: CategoryBox(
                                                    text: 'Disaster',
                                                    color: _selectedFilter ==
                                                            'Day'
                                                        ? AppColors.arrowColor
                                                        : Colors.transparent,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _selectedFilter = 'Day';
                                                  });
                                                },
                                                child: SizedBox(
                                                  height: 35,
                                                  width:
                                                      20, // Mengatur tinggi kotak
                                                  child: CategoryBox(
                                                    text: 'Year',
                                                    color: _selectedFilter ==
                                                            'Day'
                                                        ? AppColors.arrowColor
                                                        : Colors.transparent,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 16),
                                        GestureDetector(
                                          onTap: () {
                                            // Logic for apply button
                                            Navigator.pop(
                                                context); // Kembali ke halaman sebelumnya
                                          },
                                          child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: AppColors.Button,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'Apply',
                                                style: Styles.Result2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
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
                                Icons.filter_list_sharp,
                                color: AppColors.arrowColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 44,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CategoryBox(
                        text: 'All',
                        color: AppColors.arrowColor,
                        width: 192,
                      ),
                      SizedBox(width: 8),
                      CategoryBox(
                        text: 'Galang Dana',
                        color: AppColors.arrowColor,
                        width: 192, // Adjust the width value to make it wider
                      ),
                      SizedBox(width: 8),
                      CategoryBox(
                        text: 'Volunteer',
                        color: AppColors.arrowColor,
                        width: 192,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                          width: 68,
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
                                                const Icon(
                                                  Icons.verified,
                                                  color: Color(0xFF444CE7),
                                                  size: 14,
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
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
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
                                  fontSize: 14,
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
                    const SizedBox(height: 16),
                    const CustomFollowButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
