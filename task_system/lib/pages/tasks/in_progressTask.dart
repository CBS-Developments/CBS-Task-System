import 'package:flutter/material.dart';
import 'package:task_system/components/tableBox.dart';

import '../../colors/appColors.dart';
import '../../components/appBar.dart';
import '../../components/navigate_text.dart';
import '../../components/search_box.dart';
import '../../drawers/mainTaskDrawer.dart';
import '../../sizes/create_MainTask_Sizes.dart';
import '../../sizes/dashboard_sizes.dart';
import '../../tabs/task_tab.dart';

class InProgressTask extends StatefulWidget {
  const InProgressTask({Key? key}) : super(key: key);

  @override
  State<InProgressTask> createState() => _InProgressTaskState();
}

class _InProgressTaskState extends State<InProgressTask> {
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
                      thirdText: 'In-Progress Task',
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
                  fourthButtonColor: AppColor.tabBlueSelect,
                  fivethButtonColor: Colors.black,
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                TableBox(height: tableBoxFullHeight(context), generateRows: [

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

                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
