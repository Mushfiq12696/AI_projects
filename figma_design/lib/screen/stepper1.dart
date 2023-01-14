import 'dart:io';

import 'package:figma_design/widget/custom_button.dart';
import 'package:figma_design/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Stepper1 extends StatefulWidget {
  Stepper1({
    super.key,
  });

  @override
  State<Stepper1> createState() => _Stepper1State();
}

class _Stepper1State extends State<Stepper1> {
  final _nameController = TextEditingController();
  final _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios, color: Colors.white),
        title: SvgPicture.asset("asset/Stepper1.svg"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 7),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection:Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    "Complete Your Profiles",
                    style: myStyle(16, Colors.white),
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: InkWell(
                    onTap: () {
                      getImageCamera();
                    },
                    child: CircleAvatar(
                      backgroundColor: Color(0xff8E8E93),
                      radius: 50,
                      child: img == null
                          ? Icon(
                              Icons.camera_enhance,
                              color: Colors.white,
                            )
                          : Image.file(img!),
                    ),
                  ),
                ),
                SizedBox(height: 120),
                Text("Your Full Name",
                    style: GoogleFonts.nunito(
                      color: Color(0xff8A8A8E),
                      fontSize: 16,
                    )),
                SizedBox(height: 10),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.grey)),
                    labelText: "Enter your full name",
                    labelStyle: TextStyle(color: Color(0xff8A8A8E),fontSize: 16),
                    prefixIcon: Icon(Icons.person,color: Colors.grey,),
                    
                    fillColor: Colors.transparent,
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: _passController,
                  decoration: InputDecoration(
                    enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.grey)),
                    
                    labelText: "Enter Your Password",
                    labelStyle: TextStyle(color: Color(0xff8A8A8E),fontSize: 16),
                    prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                    border: OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(40),
                      
                    
                      
                    ),
                    fillColor: Colors.transparent,
                  ),
                ),
                SizedBox(height: 20,),
                CustomButton(text: "Continue", onTap: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }

  File? img;

  ImagePicker picker = ImagePicker();

  Future getImageCamera() async {
    var pickImage = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      img = File(pickImage!.path);
    });
  }

  Future getImageGallery() async {
    var pickImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      img = File(pickImage!.path);
    });
  }
}
