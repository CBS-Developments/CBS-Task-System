import 'package:flutter/material.dart';

import '../../colors/appColors.dart';
import '../../components/appBar.dart';
import '../../components/navigate_text.dart';
import '../../components/search_box.dart';
import '../../drawers/mainTaskDrawer.dart';
import '../../sizes/create_MainTask_Sizes.dart';
import '../../sizes/dashboard_sizes.dart';
import '../../tabs/task_tab.dart';

class CompletedTask extends StatefulWidget {
  final taskCount;
  const CompletedTask({Key? key, this.taskCount}) : super(key: key);

  @override
  State<CompletedTask> createState() => _CompletedTaskState();
}

class _CompletedTaskState extends State<CompletedTask> {
  String get taskCount => '20';

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
            // color: Colors.blueAccent,
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
                      thirdText: 'Completed Task',
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
                  thirdButtonColor: AppColor.tabBlueSelect,
                  fourthButtonColor: Colors.black,
                  fivethButtonColor: Colors.black,
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                Container(
                  width: chartSectionWidth(context),
                  height: chartSectionHeight(context),
                  color: Colors.cyan,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.white,
                        width: chartTextWidth(context),
                        height: chartTextHeight(context),
                        padding: EdgeInsets.all(navBoxPadding(context)),
                        child: Column(
                          children: [
                            Text(
                              'COMPLETE GOAL',
                              style: TextStyle(
                                  fontSize: serTextFont(context),
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  taskCount,
                                  style: TextStyle(
                                      fontSize: taskCountFont(context),
                                      fontWeight: FontWeight.bold),
                                ),

                                Text(
                                  'Total Tasks',
                                  style: TextStyle(
                                      fontSize: serTextFont(context),),
                                ),


                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
