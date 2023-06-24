import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sociops/screen/bottom_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToScreen();
    super.initState();
  }

  void goToScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BottomNavbar(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(height: 148),
          Center(
            child: Image(
              image: AssetImage('assets/splash-screen1.png'),
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 148),
          Center(
            child: Image(
              image: AssetImage('assets/logo.png'),
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
