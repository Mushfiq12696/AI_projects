import 'dart:math';

import 'package:figma_design/widget/custom_button.dart';
import 'package:figma_design/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CO extends StatelessWidget {
  CO({super.key,required this.title,required this.img});
  String ?title, img;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(children: [
        Positioned(
          top: -102,
          child: Transform.rotate(
            angle: pi / 6,
            child: Container(
              height: 400,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color(0xff8E8E93),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "$title",
                style: myStyle(36, Color(0xffE4E4E6)),
              ),
              SizedBox(
                height: 32,
              ),
              SvgPicture.asset(
                "asset/$img.svg",
              ),
              //color: Colors.red, semanticsLabel: 'A red up arrow'),
              SizedBox(height: 32),
              CustomButton(text: "Sign Up", onTap: () {}),
              SizedBox(height: 16),
              CustomButton(
                text: "Log In",
                onTap: () {},
                isclr: true,
              ),

              SizedBox(height: 32),
              Center(
                  child: SvgPicture.asset(
                "asset/Indicator.svg",
              )),
            ],
          ),
        )
      ]),
    );
    ;
  }
}
