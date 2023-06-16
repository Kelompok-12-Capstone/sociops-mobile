import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_campaign/Buat_Campaign.dart';
import 'package:sociops/screen/fitur_campaign/komunitas/Buat_Komunitas.dart';
import 'package:sociops/screen/splash_screen.dart';

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
      home: const BuatCampaignScreen()
    );
  }
}
