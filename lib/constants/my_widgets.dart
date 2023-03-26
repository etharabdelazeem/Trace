import 'package:flutter/material.dart';

const primaryColor = Color(0xFF3E6799);
const primaryColordark = Color(0xFF082c62);

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
        fixedSize: const Size(250, 60),
        backgroundColor: primaryColor,
        padding: const EdgeInsets.all(18.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
        ),
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
                    color: Colors.grey,
                    fontSize: 14,
                  ))
            ],
          ),
        ));
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
