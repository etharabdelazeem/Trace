import 'package:TRACE/Auth.dart';
import 'package:flutter/material.dart';
import 'package:TRACE/splash_page.dart';
import 'package:TRACE/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        duration: 3,
        goToPage: const Auth(),
      )));
}
