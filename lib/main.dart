import 'package:flutter/material.dart';
import 'package:try1/splash_page.dart';
import 'package:try1/welcome_page.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        duration: 10,
        goToPage: const WelcomePage(),
      )));
}
