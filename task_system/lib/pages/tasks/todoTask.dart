import 'package:flutter/material.dart';
import 'package:task_system/components/toDo_Calendar.dart';

import '../../colors/appColors.dart';
import '../../components/appBar.dart';
import '../../components/navigate_text.dart';
import '../../components/search_box.dart';
import '../../drawers/mainTaskDrawer.dart';
//import '../../sizes/create_MainTask_Sizes.dart';
import '../../sizes/dashboard_sizes.dart';
import '../../sizes/todo_sizes.dart';
import '../../tabs/task_tab.dart';

class ToDoTask extends StatefulWidget {
  const ToDoTask({Key? key}) : super(key: key);

  @override
  State<ToDoTask> createState() => _ToDoTaskState();
}

class _ToDoTaskState extends State<ToDoTask> {
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
             //color: Colors.blueAccent,
            child: Column(
              children: [
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NavigateText(
                      firstText: 'Task Dashboard/',
                      secText: 'Main Task/',
                      thirdText: 'To-Do Task',
                    ),
                    SearchBox()
                  ],
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                TaskTabBar(
                  firstButtonColor: Colors.black,
                  secButtonColor: Colors.black,
                  thirdButtonColor: Colors.black,
                  fourthButtonColor: Colors.black,
                  fivethButtonColor: AppColor.tabBlueSelect,
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),

                ToDoCal()

              ],
            ),
          ),
        ],
      ),
    );
  }
}
