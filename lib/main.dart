import 'package:flutter/material.dart';
import 'package:sociops/screen/bottom_screen.dart';
import 'package:sociops/screen/fitur_campaign/create_campaign/Buat_Donasi.dart';
import 'package:sociops/screen/fitur_donation/donation_screen.dart';
import 'package:sociops/screen/fitur_home/componen_home/video_home.dart';
import 'package:sociops/screen/fitur_home/volunteer_screen.dart';
import 'package:sociops/screen/fitur_organization/organization.dart';
import 'package:sociops/screen/fitur_volunteer/volunteer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sociops',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: BottomNavbarScreen()
    );
  }
}
