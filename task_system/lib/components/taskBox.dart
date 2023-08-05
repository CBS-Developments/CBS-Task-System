import 'package:flutter/material.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';
import 'package:task_system/sizes/openTask_Sizes.dart';

class TaskBoxContainer extends StatelessWidget {
  const TaskBoxContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: taskBoxWidth(context),
      height: takBoxHeight(context),
      margin: EdgeInsets.symmetric(horizontal: navBoxPadding(context)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey,
        )
      ),

    );
  }
}
