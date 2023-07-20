

import 'package:flutter/material.dart';

import '../sizes/loginPage_Sizes.dart';

class LoginTextField extends StatelessWidget {
  final controller;
  final String labelText;

  const LoginTextField({Key? key, this.controller, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(textFMargin(context)),
      color: Colors.white70,
      width: textFWidth(context),
      height: textFHeight(context),

      child: TextField(
        textInputAction: TextInputAction.next,
        controller: controller,
        decoration: InputDecoration(
            enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent),
            ),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.blueAccent,fontSize: getFontL(context))
        ),
      ),
    );
  }
}
