// ignore_for_file: unnecessary_new, prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:test5/components/constant.dart';
import 'package:test5/models/mainScren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset("assets/images/tip0.png"),
        nextScreen: MainScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: primaryColor,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
