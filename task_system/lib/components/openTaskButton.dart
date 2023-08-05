import 'package:flutter/material.dart';
import 'package:task_system/sizes/openTask_Sizes.dart';

import '../colors/appColors.dart';
import '../sizes/loginPage_Sizes.dart';

class OpenTaskButton extends StatelessWidget {
  final Function()? onTap;
  final width;
  final Widget child;
   const OpenTaskButton({Key? key, this.onTap,  this.width, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: openButtonHeight(context),
        width: width,
        decoration: BoxDecoration(
          color: AppColor.teal,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
