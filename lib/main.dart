import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:sociops/provider/user/login_provider.dart';
import 'package:sociops/provider/user/register_provider.dart';
import 'package:provider/provider.dart';
import 'package:sociops/screen/splash_screen.dart';
=======
import 'package:sociops/screen/fitur_campaign/create_campaign/pengisian_donasi.dart';
>>>>>>> Stashed changes

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
<<<<<<< Updated upstream
        title: 'Sociops',
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen());
=======
      title: 'Sociops',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const PengisianDonasiScreen(),
    );
>>>>>>> Stashed changes
  }
}
