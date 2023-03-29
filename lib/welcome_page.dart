import 'package:flutter/material.dart';
import 'package:TRACE/constants/my_widgets.dart';
import 'package:TRACE/auth.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/computer.png'),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontFamily: 'Amiri',
                  ),
                  'An online library designed to support the academic needs of students by providing them with easy-to-use search tools that allow them to find relevant information quickly.'),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              onPressed: () => {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Auth(),
                    ))
              },
              text: 'Start Learning',
            ),
          ],
        ),
      ),
    );
  }
}
