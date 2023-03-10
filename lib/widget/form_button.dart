// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final String buttonText;
  VoidCallback func;
  FormButton({super.key, required this.buttonText, required this.func});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: GestureDetector(
        onTap: func,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
