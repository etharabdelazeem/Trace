import 'package:flutter/material.dart';

import '../constants/my_widgets.dart';

class HomeSlide extends StatelessWidget {
  const HomeSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomButtonIcon(
            onPressed: () {}, text: 'Search', myIcon: Icons.search),
        const SizedBox(
          height: 30,
        ),
        CustomButtonIcon(
            onPressed: () {}, text: 'My Library', myIcon: Icons.book),
        const SizedBox(
          height: 30,
        ),
        CustomButtonIcon(
            onPressed: () {},
            text: 'Library Categories',
            myIcon: Icons.all_inbox_rounded),
        const SizedBox(
          height: 300,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.rocket,
              color: primaryColordark,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Chat GPT',
              maxLines: 1,
              style: TextStyle(
                color: primaryColordark,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
