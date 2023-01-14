import 'package:figma_design/widget/custom_textformfield.dart';
import 'package:figma_design/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Stepper extends StatefulWidget {
  Stepper({super.key});

  @override
  State<Stepper> createState() => _StepperState();
}

class _StepperState extends State<Stepper> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: Icon(
          Icons.cancel,
          color: Colors.white,
        ),
        actions: [
          Text(
            "Sign Up",
            style: myStyle(16, Color(0xffE4E4E6)),
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            "Your Email Address",
            style: GoogleFonts.nunito(
              color: Color(0xff8A8A8E),
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          EditTextUtils().getCustomEditTextArea(
            controller: _emailController,
            hintValue: "Enter Your Email",
            textStyle: GoogleFonts.nunito(
              color: Color(0xff8A8A8E),
              fontSize: 16,
            ),
            validation: true,
            keyboardType: TextInputType.emailAddress,
            validationErrorMsg: "Something Went wrong !\n Please try again",
            labelValue: "Email"
          )
        ],
      ),
    );
  }
}
