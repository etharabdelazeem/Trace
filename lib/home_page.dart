import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:try1/constants/my_widgets.dart';
import 'package:try1/home_slides/home_slide.dart';
import 'package:try1/home_slides/notification_slide.dart';
import 'package:try1/home_slides/settings_slide.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static String _selectedText = 'Home';
  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _selectedText = _pageName.elementAt(_selectedIndex);
    });
  }

  static final List<String> _pageName = ['Home', 'Notifications', 'Settings'];
  static final List<Widget> _pages = <Widget>[
    // const Icon(
    //   Icons.abc,
    //   size: 200,
    // ),
    const HomeSlide(),
    const NotificationSlide(),
    const SettingeSlide(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: const [
          Icon(
            Icons.search,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 8, 15, 20),
            child: Icon(
              Icons.account_circle_rounded,
              size: 40,
            ),
          )
        ],
        title: Text(
          _selectedText,
          textAlign: TextAlign.center,
          style: const TextStyle(color: primaryColordark),
        ),
        elevation: 0.0,
        backgroundColor: primaryColorLight,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
      // drawer: ,
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: GNav(
          tabBorderRadius: 25,
          gap: 30,
          color: primaryColor,
          activeColor: primaryColordark,
          tabBackgroundColor: primaryColorLight,
          padding: const EdgeInsets.all(15),
          selectedIndex: _selectedIndex,
          onTabChange: _onTapped,
          tabs: [
            GButton(
              icon: Icons.home,
              text: _selectedText,
            ),
            GButton(
              icon: Icons.notifications,
              text: _selectedText,
            ),
            GButton(
              icon: Icons.settings,
              text: _selectedText,
            ),
          ],
        ),
      ),
    );
  }
}
