import 'package:flutter/material.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';

class MainBoxText extends StatelessWidget {
  final String text;
  const MainBoxText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mainBoxTextWidth(context),
      height: mainBoxTextHeight(context),
      padding: EdgeInsets.all(mainBoxTextPadding(context)),
      color: Colors.white,
      child: Text(text,style: TextStyle(fontSize: mainBoxTextFont(context)),),
    );
  }
}
