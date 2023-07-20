import 'package:flutter/material.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';

class NavigateText extends StatelessWidget {
  final String firstText;
  final String secText;
  final String thirdText;

  const NavigateText({Key? key, required this.firstText, required this.secText, required this.thirdText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: navBoxPadding(context)),
      width: navBoxWidth(context),
      height: navBoxHeight(context),
      color: Colors.white,
      child: Row(
        children: [
          Text(
            firstText,
            style:
                TextStyle(color: Colors.black, fontSize: navTextFont(context),),
          ),
          Text(
            secText,
            style:
            TextStyle(color: Colors.grey, fontSize: navTextFont(context),),
          ),
          Text(
            thirdText,
            style:
            TextStyle(color: Colors.grey, fontSize: navTextFont(context),),
          ),
        ],
      ),
    );
  }
}
