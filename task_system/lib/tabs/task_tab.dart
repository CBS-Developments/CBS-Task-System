import 'package:flutter/material.dart';
import 'package:task_system/colors/appColors.dart';

import '../sizes/create_MainTask_Sizes.dart';
import '../sizes/dashboard_sizes.dart';

class TaskTabBar extends StatelessWidget {
  final Color firstButtonColor;
  final Color secButtonColor;
  final Color thirdButtonColor;
  final Color fourthButtonColor;
  final Color fivethButtonColor;

  TaskTabBar(
      {Key? key,
        required this.firstButtonColor,
        required this.secButtonColor,
        required this.thirdButtonColor,
        required this.fourthButtonColor,
        required this.fivethButtonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: firstButtonColor, // Set the text color here
            ),
            onPressed: () {},
            child: Text(
              'Main Task',
              style: TextStyle(fontSize: navTextFont(context)),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: secButtonColor, // Set the text color here
            ),
            onPressed: () {},
            child: Text(
              'Sub Task',
              style: TextStyle(fontSize: navTextFont(context)),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: thirdButtonColor, // Set the text color here
            ),
            onPressed: () {},
            child: Text(
              'Completed Task',
              style: TextStyle(fontSize: navTextFont(context)),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: fourthButtonColor, // Set the text color here
            ),
            onPressed: () {},
            child: Text(
              'In-Progress Task',
              style: TextStyle(fontSize: navTextFont(context)),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: fivethButtonColor, // Set the text color here
            ),
            onPressed: () {},
            child: Text(
              'To-Do  Task',
              style: TextStyle(fontSize: navTextFont(context)),
            ),
          ),
        ],
      ),
      padding: EdgeInsets.all(tabPadding(context)),
      height: tabBarHeight(context),
      width: tabBarWidth(context),
      decoration: BoxDecoration(
          color: AppColor.blueGreen,
          borderRadius: BorderRadius.circular(5),
          // shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(0, 0),
              blurRadius: 1,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(0, 0),
              blurRadius: 1,
              spreadRadius: 1,
            ),
          ]),
    );
  }
}
