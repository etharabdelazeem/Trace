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

  Future logIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
    }
  }

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
                    child: TextField(
                      controller: _emailController,
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
                    child: TextField(
                      controller: _passwordController,
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
