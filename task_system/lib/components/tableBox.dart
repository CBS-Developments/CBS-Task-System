import 'package:flutter/material.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';

class TableBox extends StatelessWidget {
  const TableBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: tableBoxWidth(context),
      height: tableBoxHeight(context),
      color: Colors.cyanAccent,
    );
  }
}
