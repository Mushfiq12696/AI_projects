import 'package:figma_design/widget/custom_onboarding.dart';
import 'package:figma_design/widget/widget.dart';
import 'package:flutter/material.dart';
class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: CO(title: "Get Notified when you Get a New Assignment", img: "Slider3"),
    );
  }
}