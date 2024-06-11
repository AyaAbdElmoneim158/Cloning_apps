import 'dart:async';
import 'package:app/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../utils/Colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navToHome();
  }

  navToHome() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Image.asset(
          'assets/bmi.png',
          width: 150,
        ),
      ),
    );
  }
}
