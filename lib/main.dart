// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:sociops/provider/user/login_provider.dart';
import 'package:sociops/provider/user/register_provider.dart';
import 'package:provider/provider.dart';
import 'package:sociops/screen/fitur_campaign/buat_campaign.dart';
import 'package:sociops/screen/fitur_campaign/create_campaign/pengisian_donasi.dart';
import 'package:sociops/screen/fitur_campaign/create_campaign/upload_donasi.dart';
import 'package:sociops/screen/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<RegisterProvider>(
          create: (_) => RegisterProvider(),
        ),
        ChangeNotifierProvider<LoginProvider>(
          create: (_) => LoginProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sociops',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
        home: const BuatCampaignScreen());
  }
}
