import 'package:flutter/material.dart';
import 'package:task_system/colors/appColors.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';

import '../sizes/dashboard_sizes.dart';

class TaskDetails extends StatelessWidget {




  const TaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: rightDownBoxSeparateWidth(context),
      height: rightDownBoxSeparateHeight(context),
      //color: Colors.grey,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: rightDownBoxSeparateWidth(context),
                height: taskSum01(context),
                //color: Colors.indigo,
                child: Row(
                  children: [
                    SizedBox(width: smallBoxHeight(context)),
                    Text('01. dine_0606#1680502025756'),
                    SizedBox(width: betweenGap(context)),
                    Container(
                      padding: EdgeInsets.all(5.0), // Add padding to the text
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppColor.tabBlueSelect, // Choose the border color
                          width: 1, // Choose the border width
                        ),
                      ),
                      child: Text(
                        'Medium',
                        style: TextStyle(
                            color: AppColor.tabBlueSelect,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                    Expanded(child: SizedBox()), // This will push 'Pending' to the right end
                    Text(
                      'Pending',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: rightDownBoxSeparateWidth(context),
                height: taskSum01(context),
                //color: Colors.indigo,
                child: Row(
                  children: [
                    SizedBox(width: smallBoxHeight(context)),
                    Text(
                      'Task System Figma UI',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: betweenGap(context)),

                    Expanded(child: SizedBox()), // This will push 'Pending' to the right end
                    Text(
                      '0 day(s) 5 hour(s) 0 min(s) 30 sec(s)',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: rightDownBoxSeparateWidth(context),
                height: taskSum01(context),
                //color: Colors.indigo,
                child: Row(
                  children: [
                    SizedBox(width: smallBoxHeight(context)),
                    Text(
                      'Due Date: Apr 30, 2023',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(width: betweenGap(context)),

                    GestureDetector(
                      onTap: () {
                        print("Open Task tapped");
                        // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => OpenTaskScreen()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Open Task',
                          style: TextStyle(
                            color: AppColor.regular,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: SizedBox()), // This will push 'Pending' to the right end
                    GestureDetector(
                      onTap: () {
                        print("Edit Main Task tapped");
                        // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => EditMainTaskScreen()));
                      },
                      child: Text(
                        'Edit Main Task',
                        style: TextStyle(
                            color: AppColor.tabBlueSelect,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: rightDownBoxSeparateWidth(context),
                height: taskSum01(context),
                //color: Colors.indigo,
                child: Row(
                  children: [
                    SizedBox(width: smallBoxHeight(context)),
                    Text(
                      'Dinethri Gunawardhana -> CBS Pvt.Ltd -> Assign To: [-All-]',
                      style: TextStyle(
                          fontSize: 10),
                    ),
                    SizedBox(width: betweenGap(context)),

                    Expanded(child: SizedBox()), // This will push 'Pending' to the right end
                    Text(
                      '04/04/2023',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
