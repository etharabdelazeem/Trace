import 'package:flutter/material.dart';

import '../constants/my_widgets.dart';

class NotificationSlide extends StatelessWidget {
  const NotificationSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          Icons.notification_important_sharp,
          size: 200,
          color: primaryColorLight,
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              'Nothing to show here yet!',
              textAlign: TextAlign.center,
              style: TextStyle(color: primaryColorLight, fontSize: 25),
            ),
          ),
        )
      ],
    );
  }
}
