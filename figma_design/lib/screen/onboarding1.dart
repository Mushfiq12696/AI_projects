import 'dart:math';


import 'package:figma_design/widget/custom_onboarding.dart';
import 'package:figma_design/widget/widget.dart';
import 'package:flutter/material.dart';


class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: CO(title: "Update Progress Your Work for the Team", img: "Slider"),
    );
  }
}
