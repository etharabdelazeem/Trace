import 'package:flutter/material.dart';

const primaryColor = Color(0xFF3E6799);
const primaryColordark = Color(0xFF082c62);
const primaryColorLight = Color(0x556b8bb1);

class CustomButton extends StatelessWidget {
  // const CustomButton({Key? key}) : super(key: key);

  final String text;
  // final Alignment alignment;
  final Function()? onPressed;

  const CustomButton({
    super.key,
    this.text = '',
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(330, 55),
        backgroundColor: primaryColor,
        padding: const EdgeInsets.all(18.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontSize: 14.5,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}

class CustomButtonSocial extends StatelessWidget {
  // const CustomButtonSocial({Key? key}) : super(key: key);

  final IconData icon;
  final String text;
  final Function()? onPressed;

  const CustomButtonSocial(
      {super.key, required this.text, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0))),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon),
              const SizedBox(width: 30.0),
              Text(text,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    color: Colors.grey,
                    fontSize: 14,
                  ))
            ],
          ),
        ));
  }
}

class CustomButtonIcon extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;
  final IconData myIcon;
  const CustomButtonIcon(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.myIcon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: primaryColor,
      splashColor: Colors.greenAccent,
      onPressed: onPressed,
      shape: const StadiumBorder(),
      child: SizedBox(
        width: 300,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                myIcon,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                text,
                maxLines: 1,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButtonCategory extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;
  const CustomButtonCategory({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: primaryColor,
      splashColor: Colors.greenAccent,
      onPressed: onPressed,
      shape: const StadiumBorder(),
      child: SizedBox(
        width: 350,
        height: 55,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(
                Icons.folder_outlined,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                text,
                maxLines: 1,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  final Color myColor;
  const Logo({super.key, required this.myColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'TRACE',
          style:
              TextStyle(color: myColor, letterSpacing: 10, fontFamily: 'Inter'),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 40),
          child: Icon(
            Icons.miscellaneous_services_outlined,
            color: primaryColordark,
          ),
        )
      ],
    );
  }
}

class InvertedCustomButton extends StatelessWidget {
  // const CustomButton({Key? key}) : super(key: key);

  final String text;
  // final Alignment alignment;
  final Function()? onPressed;

  const InvertedCustomButton({
    super.key,
    this.text = '',
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(330, 55),
        backgroundColor: Colors.white,
        padding: const EdgeInsets.all(18.0),
        side: const BorderSide(width: 2.0, color: primaryColor),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontFamily: 'Inter',
            color: primaryColor,
            fontSize: 14.5,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
// class ColoredButton extends StatelessWidget {
//   double width = 10;
//   double hight = 100;
//   Color buttonColor;
//   double fontSSize;
//   final Function()? onPressedd;
//   final String text;
//   ColoredButton( {required this.text,this.onPressedd, super.key, required this.buttonColor, required this.hight,required this.width,required this.fontSSize,});

//   // Color MaterialStateColor = primaryColor;

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: onPressedd,
//       style: TextButton.styleFrom(
//         // primary: primaryColor,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//         backgroundColor: primaryColor,
//         padding: const EdgeInsets.all(8.0),
//         fixedSize: Size(width, hight),
//         alignment: Alignment.center,
//       ),
//       // ButtonStyle(
//       //   padding: EdgeInsets.symmetric(horizontal: 16.0 ),
//       //   backgroundColor: MaterialStateProperty.all(primaryColor),
//       // ),
//       child: const Text(
//         'Start Learning',
//         style: TextStyle(fontSize: 20, color: Colors.white),
//       ),
//     );
//   }
// }
