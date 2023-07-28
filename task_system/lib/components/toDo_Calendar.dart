// import 'package:flutter/material.dart';
//
// import '../sizes/todo_sizes.dart';
//
// class ToDoCal extends StatelessWidget {
//   const ToDoCal({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: mainContHeight(context),
//       width: mainContWidth(context),
//       color: Colors.orangeAccent,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../sizes/todo_sizes.dart';

class ToDoCal extends StatefulWidget {
  const ToDoCal({Key? key}) : super(key: key);

  @override
  _ToDoCalState createState() => _ToDoCalState();
}

class _ToDoCalState extends State<ToDoCal> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mainContHeight(context),
      width: mainContWidth(context),
     // color: Colors.orangeAccent,
      child: TableCalendar(
        calendarFormat: _calendarFormat,
        focusedDay: _focusedDay,
        firstDay: DateTime.utc(2022, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        startingDayOfWeek: StartingDayOfWeek.monday,
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
          _showAddTaskDialog(context, selectedDay);
        },
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
        },
      ),
    );
  }

  void _showAddTaskDialog(BuildContext context, DateTime selectedDay) async {
    TextEditingController taskController = TextEditingController();
    String taskName = '';

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Task for ${selectedDay.toLocal()}'),
          content: TextField(
            controller: taskController,
            onChanged: (value) {
              taskName = value;
            },
            decoration: InputDecoration(hintText: 'Task name'),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                if (taskName.isNotEmpty) {
                  Fluttertoast.showToast(msg: 'Task "$taskName" added for ${selectedDay.toLocal()}');
                  Navigator.of(context).pop();
                } else {
                  Fluttertoast.showToast(msg: 'Please enter a task name');
                }
              },
            ),
          ],
        );
      },
    );
  }
}
