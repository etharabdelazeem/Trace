import 'package:flutter/material.dart';
import 'package:try1/constants/my_widgets.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class SettingeSlide extends StatelessWidget {
  const SettingeSlide({super.key});
  static bool isToggled = true;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Icon(
      //   Icons.search,
      //   size: 10,
      // ),
      ListTile(
        title: Row(
          children: const [
            Text('Notifications'),
            SizedBox(width: 60),
            EnableDisable(),
          ],
        ),
        leading: const Icon(Icons.notifications),
      ),
      const Divider(
        thickness: 1,
      ),
      ListTile(
        title: Row(
          children: const [
            Text('Offline Mode'),
            SizedBox(width: 60),
            EnableDisable(),
          ],
        ),
        leading: const Icon(Icons.cloud_off),
      ),
      const Divider(
        thickness: 1,
      ),
      const ListTile(
        title: Text('Downloads'),
        leading: Icon(Icons.file_download_outlined),
      ),
      const Divider(
        thickness: 1,
      ),
      ListTile(
        title: Row(
          children: const [
            Text('Dark Mode'),
            SizedBox(width: 82),
            EnableDisable(),
          ],
        ),
        leading: const Icon(Icons.mode_night),
      ),
      const Divider(
        thickness: 1,
      ),
      const ListTile(
        title: Text('Language'),
        leading: Icon(Icons.language_rounded),
      ),
      const Divider(
        thickness: 1,
      ),
      const ListTile(
        title: Text('Favorites'),
        leading: Icon(Icons.favorite),
      ),
      const Divider(
        thickness: 1,
      ),
      const ListTile(
        title: Text('Share App'),
        leading: Icon(Icons.share),
      ),
      const Divider(
        thickness: 1,
      ),
      const ListTile(
        title: Text('Help and Support'),
        leading: Icon(Icons.support_agent),
      ),
      const Divider(
        thickness: 1,
      ),
      const SizedBox(
        height: 30,
      ),
      CustomButtonIcon(
        onPressed: () {},
        text: 'Log Out',
        myIcon: Icons.logout,
      )
    ]);
  }
}

class EnableDisable extends StatelessWidget {
  const EnableDisable({super.key});

  @override
  Widget build(BuildContext context) {
    return LiteRollingSwitch(
      //initial value
      value: false,
      textOn: 'On',
      textOff: 'Off',
      colorOn: primaryColorLight,
      colorOff: Colors.grey,
      iconOn: Icons.done,
      iconOff: Icons.remove_circle_outline,
      textSize: 10.0,
      onChanged: (bool state) {
        //Use it to manage the different states
      },
      onDoubleTap: () {},
      onSwipe: () {},
      onTap: () {},
    );
  }
}
