import 'package:figma_design/widget/custom_onboarding.dart';
import 'package:figma_design/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: CO(title: "Create a Task and Assign it to Your Team Members", img: "Slider2"),
    );
  }
}