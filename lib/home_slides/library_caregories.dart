import 'package:flutter/material.dart';
import 'package:try1/constants/my_widgets.dart';

class LibraryCategories extends StatelessWidget {
  const LibraryCategories({super.key});

  static final List<String> _categories = [
    'EEE',
    'Cevil',
    'Chemical',
    'Agricultural',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: primaryColorLight,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomButtonCategory(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EEE()));
              },
              text: _categories.elementAt(0)),
          const SizedBox(
            height: 30,
          ),
          CustomButtonCategory(
              onPressed: () {}, text: _categories.elementAt(1)),
          const SizedBox(
            height: 30,
          ),
          CustomButtonCategory(
              onPressed: () {}, text: _categories.elementAt(2)),
          const SizedBox(
            height: 30,
          ),
          CustomButtonCategory(
              onPressed: () {}, text: _categories.elementAt(3)),
          const SizedBox(
            height: 30,
          ),
          const Logo(
            myColor: primaryColordark,
          )
        ],
      ),
    );
  }
}

class EEE extends StatelessWidget {
  const EEE({super.key});

  static final List<String> _eeecategories = [
    'Semester 1',
    'Semester 2',
    'Semester 3',
    'Semester 4',
    'Semester 5',
    'Semester 6',
    'Semester 7',
    'Semester 8',
    'Semester 9',
    'Semester 10',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EEE'),
        backgroundColor: primaryColorLight,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _eeecategories.elementAt(0)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _eeecategories.elementAt(1)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _eeecategories.elementAt(2)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _eeecategories.elementAt(3)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _eeecategories.elementAt(4)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _eeecategories.elementAt(5)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _eeecategories.elementAt(6)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Semester8()));
                },
                text: _eeecategories.elementAt(7)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _eeecategories.elementAt(8)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _eeecategories.elementAt(9)),
            const SizedBox(
              height: 30,
            ),
            const Logo(
              myColor: primaryColordark,
            )
          ],
        ),
      ]),
    );
  }
}

class Semester8 extends StatelessWidget {
  const Semester8({super.key});
  static final List<String> _sem8categories = [
    'Engineering Ethics',
    'Engineering Economy',
    'Operating System',
    'Electromagnetics',
    'Software Engineering',
    'Simulation',
    'Microprocessor',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semester 8'),
        backgroundColor: primaryColorLight,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _sem8categories.elementAt(0)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _sem8categories.elementAt(1)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _sem8categories.elementAt(2)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _sem8categories.elementAt(3)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _sem8categories.elementAt(4)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _sem8categories.elementAt(5)),
            const SizedBox(
              height: 30,
            ),
            CustomButtonCategory(
                onPressed: () {}, text: _sem8categories.elementAt(6)),
            const SizedBox(
              height: 30,
            ),
            const Logo(
              myColor: primaryColordark,
            )
          ],
        ),
      ]),
    );
  }
}
