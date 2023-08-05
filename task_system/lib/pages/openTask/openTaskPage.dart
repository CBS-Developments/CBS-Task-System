import 'dart:core';

import 'package:flutter/material.dart';
import 'package:task_system/sizes/openTask_Sizes.dart';
import 'package:intl/intl.dart';
import 'dart:core';

import '../../colors/appColors.dart';
import '../../components/appBar.dart';
import '../../components/navigate_text.dart';
import '../../components/search_box.dart';
import '../../drawers/mainTaskDrawer.dart';
import '../../sizes/create_MainTask_Sizes.dart';
import '../../sizes/dashboard_sizes.dart';
import '../../tabs/task_tab.dart';

class OpenTaskPage extends StatefulWidget {




  OpenTaskPage({Key? key}) : super(key: key);

  @override
  State<OpenTaskPage> createState() => _OpenTaskPageState();
}

class _OpenTaskPageState extends State<OpenTaskPage> {
  late DateTime now;// Define your instance variable here
  late final String taskTopic;

  @override
  void initState() {
    super.initState();
    now = DateTime.now(); // Initialize your instance variable here
  }




  @override
  Widget build(BuildContext context) {
    String datewithTime = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
    String taskTopic ='Dinethri Regular Task - April 2023';
    return Scaffold(
      appBar: myAppBar(context),
      body: Row(
        children: [
          MainTaskDrawer(), // Call myDrawer as a function and pass the context

          Container(
            width: middleWidth(context),
            height: getPageHeight(context),
            // color: Colors.blueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NavigateText(
                      firstText: 'Task Dashboard/',
                      secText: 'My Task/',
                      thirdText: '',
                    ),

                  ],
                ),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: navBoxPadding(context)),
                  child: Text(datewithTime,
                    style: TextStyle(
                      fontSize: datewithTimeFont(context),
                      color: Colors.grey
                    ),
                  ),
                ),

                SizedBox(
                  height: smallBoxHeight(context),
                ),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: navBoxPadding(context)),
                  child: Text(taskTopic,
                    style: TextStyle(
                        fontSize: taskTopicFont(context),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),



              ],
            ),
          ),

          Container(
            width: greenRightWidth(context),
            height: getPageHeight(context),
            color: Colors.teal.shade600,

          )



        ],
      ),
    );
  }
}
