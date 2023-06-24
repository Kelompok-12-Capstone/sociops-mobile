import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_donation/detail_donate_screen.dart';

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
      home: const DetailDonateScreen(),
    );
  }
}
