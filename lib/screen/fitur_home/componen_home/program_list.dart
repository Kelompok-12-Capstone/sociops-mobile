import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../style/color_style.dart';
import '../../fitur_campaign/buat_campaign.dart';
import '../../fitur_donation/donation_screen.dart';
import '../../fitur_organization/organization.dart';
import '../../fitur_volunteer/volunteer_screen.dart';

class ProgamListHome extends StatefulWidget {
  ProgamListHome({Key? key}) : super(key: key);

  @override
  State<ProgamListHome> createState() => _ProgamListHomeState();
}

class _ProgamListHomeState extends State<ProgamListHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: 396,
        height: 94,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DonationScreen()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'assets/galang dana.png',
                    fit: BoxFit.cover,
                    width: 40,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 5, color: ColorStyle().buttonColor),
                      borderRadius: BorderRadius.circular(32),
                      color: ColorStyle().buttonColor,
                    ),
                    child: Text(
                      'Galang Dana',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: ColorStyle().primaryblue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VolunteerScreen()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'assets/volunteer.png',
                    fit: BoxFit.cover,
                    width: 40,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 5, color: ColorStyle().buttonColor),
                      borderRadius: BorderRadius.circular(32),
                      color: ColorStyle().buttonColor,
                    ),
                    child: Text(
                      'Volunteer',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: ColorStyle().primaryblue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BuatCampaignScreen()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'assets/campaign.png',
                    fit: BoxFit.cover,
                    width: 40,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 5, color: ColorStyle().buttonColor),
                      borderRadius: BorderRadius.circular(32),
                      color: ColorStyle().buttonColor,
                    ),
                    child: Text(
                      'Campaign',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: ColorStyle().primaryblue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OrganizationScreen()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'assets/komunitas.png',
                    width: 40,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 5, color: ColorStyle().buttonColor),
                      borderRadius: BorderRadius.circular(32),
                      color: ColorStyle().buttonColor,
                    ),
                    child: Text(
                      'Komunitas',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: ColorStyle().primaryblue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
