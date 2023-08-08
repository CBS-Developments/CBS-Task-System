import 'package:flutter/material.dart';
import 'package:task_system/components/chartBox.dart';
import 'package:task_system/components/tableBox.dart';

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
  final month;
  const CompletedTask({Key? key, this.taskCount, this.month}) : super(key: key);

  @override
  State<CompletedTask> createState() => _CompletedTaskState();
}

class _CompletedTaskState extends State<CompletedTask> {
  String get taskCount => '20';
  String get month => 'August 10-20th';

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
                  fivethButtonColor: Colors.black, myTaskColor: Colors.black,
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                Container(
                  width: chartSectionWidth(context),
                  height: chartSectionHeight(context),
                  // color: Colors.cyan,
                  child: Row(
                    children: [
                      Container(
                        // color: Colors.white,
                        width: chartTextWidth(context),
                        height: chartTextHeight(context),
                        padding: EdgeInsets.all(navBoxPadding(context)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'COMPLETE GOAL',
                              style: TextStyle(
                                  fontSize: serTextFont(context),
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  taskCount,
                                  style: TextStyle(
                                      fontSize: taskCountFont(context),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ' Total Tasks',
                                  style: TextStyle(
                                    fontSize: serTextFont(context),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              month,
                              style: TextStyle(
                                fontSize: serTextFont(context),
                              ),
                            ),
                            SizedBox(
                              height: largeBoxHeight(context),
                            ),
                            Image.asset(
                              'images/CT.png',
                              width: chartIMGWidth(context),
                            )
                          ],
                        ),
                      ),
                      ChartBox(
                        centerText: '60.0%',
                        percent: 0.6,
                        footerText: 'Completed this Week',
                      ),
                      SizedBox(
                        width: interChartWidth(context),
                      ),
                      ChartBox(
                        centerText: '25.0%',
                        percent: 0.25,
                        footerText: 'In-Progress this Week',
                      ),
                      SizedBox(
                        width: interChartWidth(context),
                      ),
                      ChartBox(
                        centerText: '15.0%',
                        percent: 0.15,
                        footerText: 'To-Do this Week',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                
                TableBox(
                  height: tableBoxHeight(context),
                  generateRows: [
                    DataRow(cells: [
                      DataCell(Text(
                        'Dinethri Regular Task - April 2023',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Dec 4, 2019 21:42',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Dec 7, 2019 23:26',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Task System Figma UI',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Completed',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: tableTextFont(context)),
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Remove',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: tableTextFont(context)),
                              )),
                        ],
                      )),
                    ]),

                    DataRow(cells: [
                      DataCell(Text(
                        'Dinethri Regular Task - April 2023',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Dec 4, 2019 21:42',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Dec 7, 2019 23:26',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Task System Figma UI',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Completed',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: tableTextFont(context)),
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Remove',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: tableTextFont(context)),
                              )),
                        ],
                      )),
                    ]),

                    DataRow(cells: [
                      DataCell(Text(
                        'Dinethri Regular Task - April 2023',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Dec 4, 2019 21:42',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Dec 7, 2019 23:26',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Task System Figma UI',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Completed',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: tableTextFont(context)),
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Remove',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: tableTextFont(context)),
                              )),
                        ],
                      )),
                    ]),

                    DataRow(cells: [
                      DataCell(Text(
                        'Dinethri Regular Task - April 2023',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Dec 4, 2019 21:42',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Dec 7, 2019 23:26',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Task System Figma UI',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Completed',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: tableTextFont(context)),
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Remove',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: tableTextFont(context)),
                              )),
                        ],
                      )),
                    ]),

                    DataRow(cells: [
                      DataCell(Text(
                        'Dinethri Regular Task - April 2023',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Dec 4, 2019 21:42',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Dec 7, 2019 23:26',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Task System Figma UI',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Completed',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: tableTextFont(context)),
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Remove',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: tableTextFont(context)),
                              )),
                        ],
                      )),
                    ]),

                    DataRow(cells: [
                      DataCell(Text(
                        'Dinethri Regular Task - April 2023',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Dec 4, 2019 21:42',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Dec 7, 2019 23:26',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Task System Figma UI',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Text(
                        'Completed',
                        style: TextStyle(fontSize: tableTextFont(context)),
                      )),
                      DataCell(Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: tableTextFont(context)),
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Remove',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: tableTextFont(context)),
                              )),
                        ],
                      )),
                    ]),
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
