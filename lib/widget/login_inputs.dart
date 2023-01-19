// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  const LoginInput(
      {super.key, required this.hintText, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            obscureText: obscureText,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: hintText),
          ),
        ),
      ),
    );
  }
}
