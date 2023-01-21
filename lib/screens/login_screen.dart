// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_loginui/widget/form_button.dart';
import 'package:minimal_loginui/widget/login_inputs.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Input Controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.android,
                  size: 70,
                ),
                // Greeting text
                Text(
                  "Hello Again!",
                  style: GoogleFonts.bebasNeue(fontSize: 52),
                ),
                SizedBox(height: 10),
                Text(
                  "Welcome back, you've been missed!",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 50),
                // email
                LoginInput(
                  hintText: "Email",
                  controller: _emailController,
                ),
                SizedBox(height: 10),
                // password
                LoginInput(
                  controller: _passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),
                SizedBox(height: 15),
                // Sign In Button
                FormButton(
                  buttonText: 'Sign In',
                  func: signIn,
                ),
                SizedBox(height: 25),
                // not a memeber? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' Register Now',
                      style: TextStyle(
                          color: Colors.deepPurple.shade400,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
