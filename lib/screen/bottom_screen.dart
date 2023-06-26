import 'package:flutter/material.dart';
import 'package:sociops/screen/activities_screen.dart';
import 'package:sociops/screen/explore_screen.dart';
import 'package:sociops/screen/fitur_home/home_khusus_screen.dart';
import 'package:sociops/screen/profile_screen.dart';
import 'package:sociops/widget/bottom_navbar_widget.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int _selectedNavbar = 0;

  void _changeSelectedNavbar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  Widget screenBottomNavigation(int index) {
    if (index == 0) {
      return const HomeKhusus();
    } else if (index == 1) {
      return const ExploreScreen();
    } else if (index == 2) {
      return const ActivitiesScren();
    } else {
      return const ProfileScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 1000),
        child: screenBottomNavigation(_selectedNavbar),
      ),
      bottomNavigationBar: BottomNavbarWidget(
        currentIndex: _selectedNavbar,
        onTap: _changeSelectedNavbar,
      ),
    );
  }
}
