import 'package:flutter/material.dart';

import '../../colors/appColors.dart';
import '../../components/appBar.dart';
import '../../components/dash_filter_box.dart';
import '../../components/navigate_text.dart';
import '../../components/search_box.dart';
import '../../components/task_sum.dart';
import '../../drawers/mainTaskDrawer.dart';
import '../../sizes/create_MainTask_Sizes.dart';
import '../../sizes/dashboard_sizes.dart';
import '../../tabs/task_tab.dart';

class MyTaskPage extends StatefulWidget {
  const MyTaskPage({Key? key}) : super(key: key);

  @override
  State<MyTaskPage> createState() => _MyTaskPageState();
}

class _MyTaskPageState extends State<MyTaskPage> {
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
                  fivethButtonColor: Colors.black,
                  myTaskColor: AppColor.tabBlueSelect,
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),

                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: addDPadding(context)),
                      // color: Colors.green,
                      width: leftBoxWidth(context),
                      height: taskListBoxHeight(context),
                      child: Column(
                        children: [
                          const FilterBox(),
                          SizedBox(
                            height: smallBoxHeight(context),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: addDPadding(context)),
                            //color: Colors.teal,
                            height: taskListHeight(context),
                            width: leftBoxWidth(context),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  TaskDetails(
                                    taskID: 'dine_0606#1680502025756',
                                    priority: 'Medium',
                                    status: 'Pending',
                                    taskName: 'Task System Figma UI',
                                    date: '0 day(s) 5 hour(s) 0 min(s) 30 sec(s)',
                                    dueDate: 'Due Date: Apr 30, 2023',
                                    nameCompanyAssign: 'Dinethri Gunawardhana -> CBS Pvt.Ltd -> Assign To: [-All-]',
                                    today: '04/04/2023',
                                    color: AppColor.medium,
                                    borderColor: AppColor.medium,),

                                  Divider(thickness: 1,),

                                  Column(
                                    children: [
                                      TaskDetails(
                                        taskID: 'dine_0606#1680502025756',
                                        priority: 'Regular',
                                        status: 'Pending',
                                        taskName: 'Task System Figma UI',
                                        date: '0 day(s) 5 hour(s) 0 min(s) 30 sec(s)',
                                        dueDate: 'Due Date: Apr 30, 2023',
                                        nameCompanyAssign: 'Dinethri Gunawardhana -> CBS Pvt.Ltd -> Assign To: [-All-]',
                                        today: '04/04/2023',
                                        color: AppColor.urgent24,
                                        borderColor: AppColor.urgent24,),
                                    ],

                                  ),
                                  Divider(thickness: 1,),

                                  Column(
                                    children: [
                                      TaskDetails(
                                        taskID: 'dine_0606#1680502025756',
                                        priority: 'Low',
                                        status: 'Pending',
                                        taskName: 'Task System Figma UI',
                                        date: '0 day(s) 5 hour(s) 0 min(s) 30 sec(s)',
                                        dueDate: 'Due Date: Apr 30, 2023',
                                        nameCompanyAssign: 'Dinethri Gunawardhana -> CBS Pvt.Ltd -> Assign To: [-All-]',
                                        today: '04/04/2023',
                                        color: AppColor.low,
                                        borderColor: AppColor.low,),
                                    ],
                                  )
                                ],
                              ),
                            ),

                          ),

                        ],
                      ),

                    ),
                  ],
                )





              ],
            ),

          ),
        ],
      ),
    );
  }
}
