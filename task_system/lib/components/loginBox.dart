import 'package:flutter/material.dart';

import '../sizes/loginPage_Sizes.dart';

class LoginBox extends StatelessWidget {
  final Widget child;

  const LoginBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: getContHoriMargin(context)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 5, // Spread radius
            blurRadius: 7, // Blur radius
            offset: Offset(0, 3), // Offset
          ),
        ],
      ),
      child: child,
      width: ContWidth(context),
      height: imageContHeight(context),
    );  ;
  }
}
