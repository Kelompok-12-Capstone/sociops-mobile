// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociops/screen/fitur_organization/galang_dana.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';
import 'package:sociops/screen/fitur_organization/volunteer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Hyundai',
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                const CustomFollowButton(),
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
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent,
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      builder: (context) => const GalangDana()),
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
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent,
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      builder: (context) => const Volunteer()),
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/hyundai.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hyundai',
                      style: Styles.result3,
                    ),
                    SizedBox(width: 8),
                    SizedBox(
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
                color: isFollowing ? AppColors.Button : AppColors.arrowColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 8),
                  Text(
                    isFollowing ? 'Mengikuti' : 'Ikuti',
                    style: TextStyle(
                      color: isFollowing ? Colors.blue : AppColors.Button,
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
          const Text(
            'Proin et euismod diam. Duis fermentum felis nisi, ut lobortis lectus mollis non. Integer pellentesque erat eu diam pharetra auctor id et nulla. Nam sodales arcu nec blandit fringilla. Ut vitae ligula vel lectus ultrices tempus ut id sem. Etiam egestas lacus scelerisque augue congue, sed rutrum sem lobortis. Pellentesque vel enim ante. Quisque hendrerit lobortis neque, ac tempor dui elementum vel. Duis vitae ante imperdiet, lacinia nulla sit amet, hendrerit erat. In ac lectus vulputate, pellentesque est et, interdum augue. Nam in sodales augue, non pellentesque orci. Nullam aliquet ante ut dolor molestie venenatis. Aliquam a erat quis nulla congue porttitor sit amet id nulla. Fusce pretium diam quam, vel consequat nibh feugiat id. Aenean laoreet auctor sollicitudin. Donec at sagittis nulla, sit amet lacinia eros.',
            style: Styles.resultTextStyle,
          ),
        ],
      ),
    );
  }
}
