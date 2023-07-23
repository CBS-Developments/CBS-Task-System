import 'package:flutter/material.dart';

import '../sizes/create_MainTask_Sizes.dart';

class MainBoxTextField extends StatelessWidget {
  final width;
  final controller;
  final String hintText;
  const MainBoxTextField({Key? key, this.width, this.controller, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: mainBoxTextFiHeight(context),
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: mainBoxTextFiPadding(context)),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
            enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(5.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade500),
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: Colors.grey[100],
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500],fontSize: mainBoxTextFiFont(context)
            )
        ),
      ),
    );
  }
}
