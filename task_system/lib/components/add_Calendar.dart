import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sizes/create_MainTask_Sizes.dart';
import '../sizes/dashboard_sizes.dart';
import 'package:table_calendar/table_calendar.dart';



class AddCalendar extends StatelessWidget {
  const AddCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: addDRWidth(context),
      height: calBoxHeight(context),
      child: SingleChildScrollView(
        child: TableCalendar(
          firstDay: DateTime.now().subtract(Duration(days: 365)),
          lastDay: DateTime.now().add(Duration(days: 365)),
          focusedDay: DateTime.now(),
        ),
      ),
    );
  }
}

