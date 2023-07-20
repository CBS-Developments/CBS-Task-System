import 'package:flutter/material.dart';

import '../sizes/create_MainTask_Sizes.dart';


class MyDrawerButton extends StatelessWidget {
  final Function()? onTap;
  final Widget child;
  final Color fillColor;


  const MyDrawerButton({Key? key, this.onTap, required this.child, required this.fillColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(drawerIconMargin(context)),
        height: drawerButtonHeight(context),
        width: drawerButtonWidth(context),
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
