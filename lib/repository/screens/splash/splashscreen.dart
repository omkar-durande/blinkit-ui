import 'dart:async';

import 'package:blinklin/domin/constants/appcolors.dart';
import 'package:blinklin/repository/screens/login/loginscreen.dart';
import 'package:blinklin/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Add your navigation or logic here after the splash delay
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loginscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.scffoldbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [Uihelper.CustomImage(img: 'splashscreen_logo.png')],
        ),
      ),
    );
  }
}
