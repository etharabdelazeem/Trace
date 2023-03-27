import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:try1/constants/my_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.abc,
      size: 200,
    ),
    Icon(
      Icons.ac_unit,
      size: 200,
    ),
    Icon(
      Icons.search,
      size: 200,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: GNav(
          gap: 30,
          color: primaryColor,
          activeColor: primaryColordark,
          tabBackgroundColor: primaryColorLight,
          padding: const EdgeInsets.all(15),
          selectedIndex: _selectedIndex,
          onTabChange: _onTapped,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.notifications,
              text: 'Notifications',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
