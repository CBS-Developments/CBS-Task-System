import 'package:flutter/material.dart';
import 'package:task_system/colors/appColors.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';

import '../sizes/dashboard_sizes.dart';

class TaskDetails extends StatelessWidget {

final String taskID;
final String priority;
final String status;
final String taskName;
final String date;
final String dueDate;
final String nameCompanyAssign;
final String today;


   TaskDetails({Key? key,
     required this.taskID,
     required this.priority,
     required this.status,
     required this.taskName,
     required this.date,
     required this.dueDate,
     required this.nameCompanyAssign,
     required this.today

   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String today = DateTime.now().toString().split(' ')[0];

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
                    Text(taskID,),
                    SizedBox(width: betweenGap(context)),
                    Container(
                      padding: const EdgeInsets.all(5.0), // Add padding to the text
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppColor.tabBlueSelect, // Choose the border color
                          width: 1, // Choose the border width
                        ),
                      ),
                      child: Text(
                        priority,
                        style: TextStyle(
                            color: AppColor.tabBlueSelect,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                    const Expanded(child: SizedBox()), // This will push 'Pending' to the right end
                    Text(
                      status,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
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
                      taskName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: betweenGap(context)),

                    const Expanded(child: SizedBox()), // This will push 'Pending' to the right end
                    Text(
                      date,
                      style: const TextStyle(fontSize: 10),
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
                      dueDate,
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
                    const Expanded(child: SizedBox()), // This will push 'Pending' to the right end
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
                      nameCompanyAssign,
                      style: const TextStyle(fontSize: 10),
                    ),
                    SizedBox(width: betweenGap(context)),

                    const Expanded(child: SizedBox()), // This will push 'Pending' to the right end
                    Text(
                      today,
                      style: const TextStyle(fontSize: 10),
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
