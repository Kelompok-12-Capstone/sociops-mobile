import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_organization/round_button.dart';
import 'package:sociops/screen/fitur_organization/profile.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';

class Volunteer extends StatelessWidget {
  const Volunteer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30, left: 16),
              child: Row(
                children: [
                  RoundButton(
                    buttonColor: AppColors.primaryColor,
                    iconColor: AppColors.arrowColor,
                    icon: Icons.arrow_back,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Hyundai Volunteer',
                    style: Styles.organizerTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomFollowButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomFollowButton extends StatefulWidget {
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
                        child: Image.network(
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
                  SizedBox(width: 12),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
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
                  SizedBox(width: 12),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
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
                style: Styles.resultTextStyle
              ),
              const SizedBox(height: 8),
              Container(
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
              SizedBox(height: 16),
              GestureDetector(
                onTap: toggleFollow,
                child: Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: isFollowing
                        ? Color.fromARGB(255, 241, 172, 172)
                        : Color.fromARGB(255, 250, 10, 10),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 8),
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