// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:minimal_loginui/screens/login_screen.dart';
import "package:firebase_core/firebase_core.dart";
import 'package:minimal_loginui/screens/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
