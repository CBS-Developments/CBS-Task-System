

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
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
            ),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.green,fontSize: getFontL(context))
        ),
      ),
    );
  }
}
