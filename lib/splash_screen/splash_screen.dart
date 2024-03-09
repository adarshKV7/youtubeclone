// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:youtubeclone/bottom_navigationbar/bottom_navigation_bar.dart';
import 'package:youtubeclone/core/constant/image_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNavigationBarScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          ImageConstants.appIcon,
          scale: 1.5,
        ),
      ),
    );
  }
}
