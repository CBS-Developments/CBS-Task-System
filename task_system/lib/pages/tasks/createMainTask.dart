import 'package:flutter/material.dart';
import 'package:task_system/components/appBar.dart';
import 'package:task_system/components/navigate_text.dart';
import 'package:task_system/drawers/mainTaskDrawer.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';

import '../../sizes/dashboard_sizes.dart';

class MainTask extends StatefulWidget {
  const MainTask({Key? key}) : super(key: key);

  @override
  State<MainTask> createState() => _MainTaskState();
}

class _MainTaskState extends State<MainTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      body: Row(
        children: [
          MainTaskDrawer(), // Call myDrawer as a function and pass the context

          Container(
            width: rightSideWidth(context),
            height: getPageHeight(context),
            color: Colors.blueAccent,
            child: Column(
              children: [
                Row(
                  children: [
                    NavigateText(firstText: 'Task Dashboard/', secText: 'Main Task/', thirdText: 'Create Main Task',),
                  ],
                ),


              ],
            ),

          )


        ],
      ),
    );
  }
}

