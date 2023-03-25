import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  int duration = 0;
  Widget goToPage;
  SplashScreen({super.key, required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => goToPage,
          ));
    });
    return Scaffold(
      body: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.scaleDown,
      ),
      // body: Container(
      //   // color: const Color(0xFF082c62),
      //   alignment: Alignment.center,
      //   decoration: const BoxDecoration(
      //       gradient: LinearGradient(
      //     colors: [Color(0xFF3E6799), Color(0x003E6799)],
      //     begin: AlignmentDirectional.bottomCenter,
      //     end: Alignment.topCenter,
      //   )),
      //   child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: const [
      //         Icon(Icons.settings, color: Colors.white, size: 150),
      //         Text(
      //           'TRACE',
      //           textAlign: TextAlign.center,
      //           style: TextStyle(
      //             color: Colors.white,
      //           ),
      //         ),
      //       ]),
      // ),
    );
  }
}
