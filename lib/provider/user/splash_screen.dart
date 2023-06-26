import 'package:flutter/material.dart';
import 'package:sociops/provider/user/splash_model_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SplashViewModel().checkUserLogin(context);
    // splashscreenStart();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: Image.asset(
                'assets/images/image1.png',
                width: 360,
                height: 156.17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
