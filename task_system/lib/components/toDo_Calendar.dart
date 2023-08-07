import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task_system/pages/tasks/createMainTask.dart';

import '../sizes/todo_sizes.dart';

class ToDoCal extends StatefulWidget {
  const ToDoCal({Key? key}) : super(key: key);

  @override
  _ToDoCalState createState() => _ToDoCalState();
}

class _ToDoCalState extends State<ToDoCal> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime? _selectedDay; // Update to nullable DateTime
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: mainContHeight(context),
      width: mainContWidth(context),
      child: Column(
        children: [
          TableCalendar(
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
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
          ),
          if (_selectedDay != null) // Show the button only if a date is selected
            Container(
              decoration: BoxDecoration(
                color: Colors.white70, // Set the background color
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.grey), // Set border radius if desired
              ),
              child: ElevatedButton.icon(
                onPressed: () {
                  _navigateToAddTaskPage(context);
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.red,
                ),
                label: const Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _navigateToAddTaskPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainTask()),
    );
  }
}
