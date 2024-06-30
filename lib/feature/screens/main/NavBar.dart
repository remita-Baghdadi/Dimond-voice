import 'package:dimondvoice/constants/constansts.dart';
import 'package:dimondvoice/feature/screens/Home/HomePage.dart';
import 'package:dimondvoice/feature/screens/login.dart';
import 'package:dimondvoice/feature/screens/signUp.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),
    SignUp(),
    Signin(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: white,
        iconSize: 20,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_4_rounded), label: "profile"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: purple,
        onTap: _onItemTapped,
      ),
    );
  }
}
