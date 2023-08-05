import 'package:flutter/material.dart';

import '../colors/appColors.dart';
import '../sizes/loginPage_Sizes.dart';

class OpenTaskButton extends StatelessWidget {
  final Function()? onTap;
  final String childText;
  const OpenTaskButton({Key? key, this.onTap, required this.childText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: buttonHeight(context),
        width: buttonWidth(context),
        decoration: BoxDecoration(
          color: AppColor.teal,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            childText,
            style: TextStyle(
              color: Colors.white,
              fontSize: buttonFont(context),
            ),
          ),
        ),
      ),
    );
  }
}
