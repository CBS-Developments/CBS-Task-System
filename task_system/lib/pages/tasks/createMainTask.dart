import 'package:flutter/material.dart';
import 'package:task_system/components/appBar.dart';
import 'package:task_system/components/navigate_text.dart';
import 'package:task_system/components/search_box.dart';
import 'package:task_system/drawers/mainTaskDrawer.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';
import 'package:task_system/tabs/task_tab.dart';

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
                      thirdText: 'Create Main Task',
                    ),
                    SearchBox()
                  ],
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                TaskTabBar(
                  firstButtonColor: Colors.deepPurple,
                  secButtonColor: Colors.black,
                  thirdButtonColor: Colors.black,
                  fourthButtonColor: Colors.black,
                  fivethButtonColor: Colors.black,
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: addDPadding(context)),
                      // color: Colors.grey,
                      height: navBoxHeight(context),
                      width: addDWidth(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  Colors.black, // Set the text color here
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.black,
                                  size: drawerIconScale(context),
                                  // size: drawerIconScale(context),
                                ),
                                SizedBox(width: drawerMiniWidth(context)),
                                Text(
                                  'Add Details',
                                  style: TextStyle(
                                      fontSize: drawerFontLarge(context),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),

                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor:
                              Colors.blue, // Set the text color here
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.blue,
                                  size: drawerIconScale(context),
                                  // size: drawerIconScale(context),
                                ),
                                SizedBox(width: drawerMiniWidth(context)),
                                Text(
                                  'Create Sub Task',
                                  style: TextStyle(
                                      fontSize: drawerFontLarge(context),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: sizeBoxWidthS(context),
                    ),
                    Container(
                      // color: Colors.blueGrey,
                      height: navBoxHeight(context),
                      width: addDRWidth(context),
                      padding: EdgeInsets.symmetric(horizontal: navBoxPadding(context)),
                      child: Row(
                        children: [
                          Text(
                            'Select Priority',
                            style: TextStyle(
                                fontSize: drawerFontLarge(context),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),

                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: addDPadding(context)),
                      color: Colors.greenAccent,
                      height: mainBoxHeight(context),
                      width: addDWidth(context),

                    ),

                    SizedBox(
                      width: sizeBoxWidthS(context),
                    ),

                    Container(
                      color: Colors.yellowAccent,
                      height: mainBoxHeight(context),
                      width: addDRWidth(context),


                    )
                  ],
                )


              ],
            ),
          )
        ],
      ),
    );
  }
}
