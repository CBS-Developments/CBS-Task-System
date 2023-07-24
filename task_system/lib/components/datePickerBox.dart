import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../sizes/create_MainTask_Sizes.dart';

class DatePickerBox extends StatefulWidget {
  final TextEditingController controller;
  
  DatePickerBox({Key? key, required this.controller}) : super(key: key);

  @override
  State<DatePickerBox> createState() => _DatePickerBoxState();
}

class _DatePickerBoxState extends State<DatePickerBox> {
  @override
  void initState() {
    super.initState();
    // Set the initial value of the text field if provided
    widget.controller.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mainBoxTextFiHalfWidth(context),
      height: mainBoxTextFiHeight(context),
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: mainBoxTextFiPadding(context)),
      child: TextField(
        controller: widget.controller, // Use the provided controller
        decoration: const InputDecoration(
          icon: Icon(Icons.calendar_today), // Icon of the text field
          hintText: "Enter Date",
        ),
        readOnly: true, // When true, the user cannot edit the text
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(), // Get today's date
            firstDate: DateTime(2000), // DateTime.now() - not to allow to choose before today.
            lastDate: DateTime(2101),
          );

          if (pickedDate != null) {
            print(pickedDate); // Get the picked date in the format => 2022-07-04 00:00:00.000
            String formattedDate =
            DateFormat('yyyy-MM-dd').format(pickedDate); // Format date in required form here we use yyyy-MM-dd that means time is removed
            print(formattedDate); // Formatted date output using the intl package =>  2022-07-04
            // You can format the date as per your need

            setState(() {
              widget.controller.text = formattedDate; // Set formatted date to TextField value.
            });
          } else {
            print("Date is not selected");
          }
        },
      ),
    );
  }
}
