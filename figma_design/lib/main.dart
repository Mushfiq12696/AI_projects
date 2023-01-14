import 'package:figma_design/screen/bottom_nav/bottom_nav_bar.dart';
import 'package:figma_design/screen/onboarding1.dart';
import 'package:figma_design/screen/onboarding2.dart';
import 'package:figma_design/screen/onboarding3.dart';
import 'package:figma_design/screen/stepper.dart';
import 'package:figma_design/screen/stepper1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      debugShowCheckedModeBanner: false,
      home:BottomNavDemo(),
    );
  }
}

