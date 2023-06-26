import 'package:flutter/material.dart';

class BottomNavbarWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTap;
  const BottomNavbarWidget({
    Key? key,
    this.currentIndex = 0,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard_outlined),
          label: 'Eksplor',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          label: 'Aktifitas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profil',
        ),
      ],
      // backgroundColor: const Color(0xFF2465ac),
      currentIndex: currentIndex,
      selectedItemColor: const Color(0xFF444CE7),
      unselectedItemColor: const Color(0xFF667085),
      showUnselectedLabels: true,
      // selectedLabelStyle: ,
      onTap: onTap,
    );
  }
}
