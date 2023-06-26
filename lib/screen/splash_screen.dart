import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sociops/provider/user/save_token.dart';
import 'package:sociops/screen/bottom_screen.dart';
import 'package:sociops/screen/login_screen.dart';
import '../provider/user/splash_model_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // goToScreen();
    super.initState();
    SplashViewModel().checkUserLogin(context);
  }

  void checkUserLogin(BuildContext context) async {
    Timer(
      const Duration(seconds: 5),
      () async {
        var cekDataLogin = await SharedPref.getToken();

        if (cekDataLogin != null) {
          // ignore: use_build_context_synchronously
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNavbarScreen(),
              ),
              (route) => false);
        } else {
          // ignore: use_build_context_synchronously
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
              (route) => false);
        }
      },
    );
  }

  // void goToScreen() async {
  //   await Future.delayed(const Duration(seconds: 3));
  //   // ignore: use_build_context_synchronously
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => const LoginScreen(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
      ),
    );
  }
}
