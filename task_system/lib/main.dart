import 'package:flutter/material.dart';
import 'package:task_system/pages/openTask/openTaskPage.dart';
import 'package:task_system/pages/tasks/completedTask.dart';
import 'package:task_system/pages/tasks/createMainTask.dart';
import 'package:task_system/pages/dashboard/dashboard.dart';
import 'package:task_system/pages/login_page.dart';
import 'package:task_system/pages/tasks/myTaskPage.dart';
import 'package:task_system/pages/tasks/todoTask.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTaskPage(),
    );
  }
}
