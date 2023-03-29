import 'package:flutter/material.dart';
import 'package:TRACE/constants/my_widgets.dart';
import 'package:TRACE/home_slides/library_caregories.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  Future logIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      errorMessage = '';
    } on FirebaseAuthException catch (error) {
      errorMessage = error.message!;
    }
    setState(() {});
  }

  String errorMessage = '';

  void openSignupPage() {
    Navigator.of(context).pushReplacementNamed('signupPage');
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  static const String _selectedText = 'Log In';
  bool? check3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            _selectedText,
            textAlign: TextAlign.center,
            style: TextStyle(color: primaryColordark),
          ),
          elevation: 0.0,
          backgroundColor: primaryColorLight,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),

              //Email Textfeild
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: _emailController,
                      validator: validateEmail,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              //Password Textfeild
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: _passwordController,
                      validator: validatePassword,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),

              //Remember me Text

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: CheckboxListTile(
                  value: check3,
                  controlAffinity:
                      ListTileControlAffinity.leading, //checkbox at left
                  onChanged: (bool? value) {
                    setState(() {
                      check3 = value;
                    });
                  },
                  title: const Text("Remember Me"),
                ),
              ),

              //error massege
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: Text(errorMessage,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        color: Colors.red,
                      )),
                ),
              ),

              const SizedBox(height: 30),

              //Sign in button
              GestureDetector(
                onTap: logIn,
                child: CustomButton(
                  onPressed: logIn,
                  text: 'Log In',
                ),
              ),

              const SizedBox(height: 10),

              //Sign in as a guest button
              CustomButton(
                onPressed: () => {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LibraryCategories(),
                      ))
                },
                text: 'Log In as a Guest',
              ),

              const SizedBox(
                height: 60,
              ),

              //Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Do not have an account?',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: primaryColorLight,
                      )),
                  GestureDetector(
                    onTap: openSignupPage,
                    child: const Text('Create Account',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: primaryColor,
                        )),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

//Checking if email feild is empty
String? validateEmail(String? formEmail) {
  if (formEmail == null || formEmail.isEmpty) {
    return 'E-mail address is required.';
  }

  String pattern = r'\w+@\w+\.\w+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formEmail)) return 'Invalid E-mail Address format.';

  return null;
}

//Checking if password feild is empty

String? validatePassword(String? formPassword) {
  if (formPassword == null || formPassword.isEmpty) {
    return 'Password is required.';
  }

  String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formPassword)) {
    return '''
      Password must be at least 8 characters,
      include an uppercase letter, number and symbol.
      ''';
  }

  return null;
}
