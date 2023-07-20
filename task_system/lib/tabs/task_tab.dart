import 'package:flutter/material.dart';

import '../sizes/create_MainTask_Sizes.dart';
import '../sizes/dashboard_sizes.dart';

class TaskTabBar extends StatelessWidget {
  const TaskTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          TextButton(onPressed: () {}, child: Text('Main Task'))
        ],
      ),
      padding: EdgeInsets.all(tabPadding(context)),
      height: tabBarHeight(context),
      width: tabBarWidth(context),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          // shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              offset: Offset(3, 3),
              blurRadius: 5,
              spreadRadius: 1,
            ),

            BoxShadow(
              color: Colors.grey.shade400,
              offset: Offset(-3, -3),
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ]
      ),
    );
  }

}
