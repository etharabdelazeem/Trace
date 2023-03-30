import 'package:flutter/material.dart';

import '../constants/my_widgets.dart';
import 'library_caregories.dart';
import 'search_slide.dart';

class HomeSlide extends StatelessWidget {
  const HomeSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 70,
        ),
        CustomButtonIcon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchSlide()));
            },
            text: 'Search',
            myIcon: Icons.search),
        const SizedBox(
          height: 30,
        ),
        CustomButtonIcon(
            onPressed: () {}, text: 'My Library', myIcon: Icons.book),
        const SizedBox(
          height: 30,
        ),
        CustomButtonIcon(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LibraryCategories()));
            },
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
