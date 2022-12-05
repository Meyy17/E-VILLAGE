// ignore_for_file: file_names

import 'package:e_villlage/Ui/HomeScreenUi/homescreen_ui.dart';
import 'package:e_villlage/Ui/ProfileScreenUi/profile_ui.dart';
import 'package:e_villlage/Ui/RiwayatUi/riwayat_ui.dart';
import 'package:e_villlage/Ui/SuggestionUi/suggestion_ui.dart';
import 'package:flutter/material.dart';

class NavBotBar extends StatefulWidget {
  const NavBotBar({Key? key}) : super(key: key);

  @override
  State<NavBotBar> createState() => _NavBotBarState();
}

class _NavBotBarState extends State<NavBotBar> {
  int _screenindex = 0;
  final screen = [
    const HomeScreen(),
    const Center(
      child: Text(
        "PAGE KE",
        style: TextStyle(color: Colors.black),
      ),
    ),
    const SugestionScreen(),
    const RiwayatScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_screenindex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership),
            label: "Bayar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: "Saran",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "Riwayat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: "Profile",
          ),
        ],
        currentIndex: _screenindex,
        selectedItemColor: const Color.fromARGB(255, 181, 226, 161),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            _screenindex = value;
          });
        },
      ),
    );
  }
}
