import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sociops/provider/user/save_token.dart';
import 'package:sociops/screen/login_screen.dart';

import '../../screen/bottom_screen.dart';

class SplashViewModel with ChangeNotifier {
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
}
