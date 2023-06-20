import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/fitur_profile/about_us_screen.dart';
import 'package:sociops/screen/fitur_profile/contact_us_screen.dart';
import 'package:sociops/screen/fitur_profile/faq_screen.dart';
import 'package:sociops/screen/fitur_profile/policy_screen.dart';
import 'package:sociops/screen/fitur_profile/term_condition_screen.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Help',
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 16),
              SizedBox(
                width: 396,
                height: 64,
                child: TextButton.icon(
                  icon: const Icon(
                    Icons.question_answer_outlined,
                    color: Colors.black,
                  ),
                  style: ButtonStyle(
                    alignment: Alignment.centerLeft,
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.all(16),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          builder: (context) => const FAQScreen()),
                    );
                  },
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'FAQ',
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
                                builder: (context) => const FAQScreen()),
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
                  icon: const Icon(
                    Icons.call_outlined,
                    color: Colors.black,
                  ),
                  style: ButtonStyle(
                    alignment: Alignment.centerLeft,
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.all(16),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          builder: (context) => const ContactUsScreen()),
                    );
                  },
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kontak kami',
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
                                builder: (context) => const ContactUsScreen()),
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
                  icon: const Icon(
                    Icons.speaker_notes_outlined,
                    color: Colors.black,
                  ),
                  style: ButtonStyle(
                    alignment: Alignment.centerLeft,
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.all(16),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          builder: (context) => const TermConditionScreen()),
                    );
                  },
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Syarat & Ketentuan',
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
                                    const TermConditionScreen()),
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
                  icon: const Icon(
                    Icons.policy_outlined,
                    color: Colors.black,
                  ),
                  style: ButtonStyle(
                    alignment: Alignment.centerLeft,
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.all(16),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          builder: (context) => const PolicyScreen()),
                    );
                  },
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kebijakan dan Privasi',
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
                                builder: (context) => const PolicyScreen()),
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
                  icon: const Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.black,
                  ),
                  style: ButtonStyle(
                    alignment: Alignment.centerLeft,
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.all(16),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          builder: (context) => const AboutUsScreen()),
                    );
                  },
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tentang kami',
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
                                builder: (context) => const AboutUsScreen()),
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
        ),
      ),
    );
  }
}
