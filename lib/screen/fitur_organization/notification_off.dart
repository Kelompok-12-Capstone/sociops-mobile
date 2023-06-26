// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_home/home_khusus_screen.dart';
import 'package:sociops/screen/fitur_organization/round_button.dart';
import 'package:sociops/style/color_style.dart';
import 'package:sociops/style/font_style.dart';
import 'package:sociops/screen/explore_screen.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30, left: 16),
              child: Row(
                children: [
                  RoundButton(
                    buttonColor: AppColors.primaryColor,
                    iconColor: AppColors.arrowColor,
                    icon: Icons.arrow_back,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeKhusus()),
                      );
                    },
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'Notifikasi',
                    style: Styles.organizerTextStyle,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomNotificationButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomNotificationButton extends StatefulWidget {
  const CustomNotificationButton({super.key});

  @override
  _CustomNotificationButtonState createState() =>
      _CustomNotificationButtonState();
}

class _CustomNotificationButtonState extends State<CustomNotificationButton> {
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
          const SizedBox(height: 16),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 16),
                SizedBox(
                  width: 400,
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'assets/notifikasi.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'You have no notifications. Follow program to get updated notifications',
                  style: Styles.resultTex,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ExploreScreen()),
              );
            },
            child: Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: AppColors.arrowColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 8),
                  Text(
                    'Eksplor Program',
                    style: TextStyle(
                      color: AppColors.backgroundColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
