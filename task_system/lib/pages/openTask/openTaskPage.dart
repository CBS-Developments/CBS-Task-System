import 'dart:core';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_system/components/addCommentTextBox.dart';
import 'package:task_system/components/taskBox.dart';
import 'package:task_system/sizes/openTask_Sizes.dart';
import 'package:intl/intl.dart';
import 'dart:core';

import '../../colors/appColors.dart';
import '../../components/appBar.dart';
import '../../components/my_button.dart';
import '../../components/navigate_text.dart';
import '../../components/openTaskButton.dart';
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
  // final Color borderColor;
  // final Color color;

  String get priority => 'Medium';
  Color get color => AppColor.medium;
  Color get borderColor => AppColor.medium;

  String get taskID => ' dine_64764#8193898728';
  String get createBy => ' Dinethri Gunawardhane';
  String get companyName => ' CBS';
  String get sourceFrom => ' Corporate Email';
  String get assignTo => ' [Deshika]';
  String get dueDate => ' Apr 30, 2023';
  String get taskStatus => ' Pending';
  String get createdDate => ' 04/03/2023';



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

                SizedBox(
                  height: smallBoxHeight(context),
                ),

                TaskBoxContainer(),

                SizedBox(
                  height: smallBoxHeight(context),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OpenTaskButton(
                      width: mtButtonWidth(context),
                      onTap: () {  },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'MAIN  TASK',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: openButtonFont(context),
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down_outlined,
                            color: Colors.white,
                            size: drawerIconScale(context),),
                        ],
                      ),
                    ),

                    OpenTaskButton(
                      width: moveButtonWidth(context),
                      onTap: () {  },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'MOVE  TO',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: openButtonFont(context),
                            ),
                          ),
                          Icon(Icons.arrow_forward_outlined,
                            color: Colors.white,
                            size: drawerIconScale(context),),
                        ],
                      ),
                    ),

                    OpenTaskButton(
                      width: cnButtonWidth(context),
                      onTap: () {  },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'CREATE  NEW',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: openButtonFont(context),
                            ),
                          ),
                          Icon(Icons.arrow_forward_outlined,
                            color: Colors.white,
                            size: drawerIconScale(context),),
                        ],
                      ),
                    ),

                    OpenTaskButton(
                      width: doneButtonWidth(context),
                      onTap: () {  },
                      child: Text(
                        'DONE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: openButtonFont(context),
                        ),
                      ),
                    ),


                  ],
                ),

                SizedBox(
                  height: smallBoxHeight(context),
                ),

                Container(
                  width: commentBoxWidth(context),
                  height: commentBoxHeight(context),
                  margin: EdgeInsets.symmetric(horizontal: navBoxPadding(context)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey,
                      )
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding:  EdgeInsets.all(commentBoxPadding(context)),
                            child: Text('Add Comment:',
                              style: TextStyle(
                                fontSize: addCommentFont(context),
                                fontWeight: FontWeight.bold,
                              )
                              ),
                          ),

                          AddCommentTextBox()



                        ],
                      ),

                      SizedBox(
                        width: commentSizeBoxWidth(context),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.all(commentBoxPadding(context)),
                            child: Text('Attachment: ',
                                style: TextStyle(
                                  fontSize: addCommentFont(context),
                                  fontWeight: FontWeight.bold,
                                )
                            ),
                          ),

                          Row(
                            children: [
                                   Icon(Icons.attach_file_outlined,
                                  color: Colors.blue,
                                    size: attachIconScale(context),
                                  ),


                              Text('Drag and drop files to attach or',
                              style: TextStyle(
                                fontSize: commentFont(context),
                              ),),

                              TextButton(
                                onPressed: () {  },
                                child: Text('Browse',
                                  style: TextStyle(
                                    fontSize: commentFont(context),
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),),
                              )


                            ],
                          ),

                          SizedBox(
                            height: smallBoxHeight(context),
                          ),
                          SizedBox(
                            height: smallBoxHeight(context),
                          ),


                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  SizedBox(
                                    width: commentBigSizeBoxWidth(context),
                                  ),

                                  IconButton(
                                    onPressed:(){},
                                    icon: Icon(
                                      Icons.cancel_outlined,
                                      color: AppColor.teal,
                                       size: iconButtonScale(context),
                                    ),
                                  ),
                                  SizedBox(
                                    width: commentSmallSizeBoxWidth(context),
                                  ),

                                  IconButton(
                                    onPressed:(){},
                                    icon: Icon(
                                      Icons.arrow_circle_right,
                                      color: AppColor.teal,
                                       size: iconButtonScale(context),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),


                      

                      
                    ],
                  ),

                ),


              ],
            ),
          ),

          Container(
            width: greenRightWidth(context),
            height: getPageHeight(context),
            color: Colors.teal.shade600,
            child: Column(
              children: [
                SizedBox(
                  height: smallBoxHeight(context),
                ),

                Container(
                  width: rightWBoxWidth(context),
                  height: rightWBoxHeight(context),
                  margin: EdgeInsets.symmetric(horizontal: navBoxPadding(context)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey,
                      )
                  ),

                ),

                SizedBox(
                  height: smallBoxHeight(context),
                ),

                Container(
                  padding: const EdgeInsets.all(5.0), // Add padding to the text
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: borderColor, // Choose the border color
                      width: 1, // Choose the border width
                    ),
                  ),
                  child: Text(
                    priority,
                    style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),

                SizedBox(
                  height: smallBoxHeight(context),
                ),

                Row(
                  children: [
                    SizedBox(
                      width: commentSizeBoxWidth(context),
                    ),

                    Text('Task ID :', style:
                      TextStyle(fontSize: commentFont(context,),
                      color: Colors.white),),

                    Text(taskID, style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.black),),
                  ],
                ),

                SizedBox(
                  height: smallestBoxHeight(context),
                ),

                Row(
                  children: [
                    SizedBox(
                      width: commentSizeBoxWidth(context),
                    ),

                    Text('Create By :', style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.white),),

                    Text(createBy, style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.black),),
                  ],
                ),

                SizedBox(
                  height: smallestBoxHeight(context),
                ),

                Row(
                  children: [
                    SizedBox(
                      width: commentSizeBoxWidth(context),
                    ),

                    Text('Company Name :', style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.white),),

                    Text(companyName, style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.black),),
                  ],
                ),

                SizedBox(
                  height: smallestBoxHeight(context),
                ),

                Row(
                  children: [
                    SizedBox(
                      width: commentSizeBoxWidth(context),
                    ),

                    Text('Source From :', style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.white),),

                    Text(sourceFrom, style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.black),),
                  ],
                ),

                SizedBox(
                  height: smallestBoxHeight(context),
                ),

                Row(
                  children: [
                    SizedBox(
                      width: commentSizeBoxWidth(context),
                    ),

                    Text('Task Assign To :', style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.white),),

                    Text(assignTo, style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.black),),
                  ],
                ),

                SizedBox(
                  height: smallestBoxHeight(context),
                ),

                Row(
                  children: [
                    SizedBox(
                      width: commentSizeBoxWidth(context),
                    ),

                    Text('Due Date :', style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.white),),

                    Text(dueDate, style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.black),),
                  ],
                ),

                SizedBox(
                  height: smallestBoxHeight(context),
                ),

                Row(
                  children: [
                    SizedBox(
                      width: commentSizeBoxWidth(context),
                    ),

                    Text('Task Status :', style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.white),),

                    Text(taskStatus, style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.black),),
                  ],
                ),

                SizedBox(
                  height: smallestBoxHeight(context),
                ),

                Row(
                  children: [
                    SizedBox(
                      width: commentSizeBoxWidth(context),
                    ),

                    Text('Created Date :', style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.white),),

                    Text(createdDate, style:
                    TextStyle(fontSize: commentFont(context,),
                        color: Colors.black),),
                  ],
                ),

                SizedBox(
                  height: smallBoxHeight(context),
                ),

                TextButton(
                    onPressed:(){},
                    child: Text('MARK IN PROGRESS',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: addCommentFont(context)
                    ),
                    ),
                ),

                SizedBox(
                  height: smallBoxHeight(context),
                ),



              ],

            ),

          )



        ],
      ),
    );
  }
}
