import 'package:figma_design/widget/widget.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text,this.isclr,required this.onTap});
  String text;
  bool ? isclr;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        alignment: Alignment.center,
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
           color: isclr == null?Colors.blue: Colors.transparent,
            border: Border.all(
              color: isclr==null? Colors.transparent:Colors.white
            )
            ),
        child: Text(
          text,
          style: myStyle(17, Color(0xffFFFFFF)),
        ),
      ),
    );
  }
}
