import 'package:flutter/material.dart';
import 'package:quiz_flutter_level_2/Halaman%20Awal/Halaman%20Lain/halamanlain.dart';

import 'package:quiz_flutter_level_2/Halaman%20Awal/halamanawal.dart';
import 'package:quiz_flutter_level_2/Profil/profil.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: <Widget>[
        const HalamanAwal(),
        const HalamanAkademi(),
        const HalamanReguler(),
        const HalamanProfil()
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        height: 80,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        shadowColor: Colors.grey,
        elevation: 5,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: ImageIcon(
              AssetImage("assets/icon/home_active.png"),
              color: Color(0xff233975),
            ),
            icon: ImageIcon(
              AssetImage("assets/icon/home_active.png"),
              color: Color(0xff757575),
            ),
            label: "Beranda",
          ),
          NavigationDestination(
              selectedIcon: ImageIcon(
                AssetImage("assets/icon/akademi.png"),
                color: Color(0xff233975),
              ),
              icon: ImageIcon(
                AssetImage("assets/icon/akademi.png"),
                color: Color(0xff757575),
              ),
              label: "Akademi"),
          NavigationDestination(
              selectedIcon: ImageIcon(
                AssetImage("assets/icon/reguler.png"),
                color: Color(0xff233975),
              ),
              icon: ImageIcon(
                AssetImage("assets/icon/reguler.png"),
                color: Color(0xff757575),
              ),
              label: "Reguler"),
          NavigationDestination(
              selectedIcon: ImageIcon(
                AssetImage("assets/icon/profil.png"),
                color: Color(0xff233975),
              ),
              icon: ImageIcon(
                AssetImage("assets/icon/profil.png"),
                color: Color(0xff757575),
              ),
              label: "Profil")
        ],
      ),
    );
  }
}
