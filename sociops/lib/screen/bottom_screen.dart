import 'package:flutter/material.dart';
import 'package:sociops/screen/activities_screen.dart';
import 'package:sociops/screen/explore_screen.dart';
import 'package:sociops/screen/home_screen.dart';
import 'package:sociops/screen/profile_screen.dart';
import 'package:sociops/widget/bottom_navbar_widget.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedNavbar = 0;

  void _changeSelectedNavbar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  Widget screenBottomNavigation(int index) {
    if (index == 0) {
      return const HomeScreen();
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
