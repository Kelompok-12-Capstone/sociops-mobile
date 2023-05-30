import 'package:flutter/material.dart';
import 'package:sociops/screen/edit_profile_screen.dart';

import 'screen/profile_screen.dart';
import 'screen/setting_screen.dart';

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
      home: const ProfileScreen(),
    );
  }
}
