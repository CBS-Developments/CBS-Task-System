import 'package:flutter/material.dart';
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight(context)),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'CBS Task System',
            style: TextStyle(
              fontSize: appBarFont(context),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

    );
  }
}
