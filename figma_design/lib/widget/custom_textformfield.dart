import 'package:flutter/material.dart';
class EditTextUtils {
  TextFormField getCustomEditTextArea(
      {String labelValue = "",
      String hintValue = "",
      required bool validation,
      required TextEditingController controller,
      TextInputType keyboardType = TextInputType.text,
      required TextStyle textStyle,
      required String validationErrorMsg}) {
    TextFormField textFormField = TextFormField(
      keyboardType: keyboardType,
      style: textStyle,
      controller: controller,
      
      decoration: InputDecoration(
          labelText: labelValue,
          hintText: hintValue,
          labelStyle: textStyle,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
    );
    return textFormField;
  }
}