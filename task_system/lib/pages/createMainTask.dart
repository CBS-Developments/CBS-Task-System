import 'package:flutter/material.dart';
import 'package:task_system/components/appBar_withDrawer.dart';
import 'package:task_system/drawers/mainTaskDrawer.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';

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
        ],
      ),
    );
  }
}

