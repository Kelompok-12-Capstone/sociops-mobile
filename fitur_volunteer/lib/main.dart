import 'package:flutter/material.dart';

import 'screens/volunter_screen.dart';

// import 'screens/volunter_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const VolunteerScreen(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
