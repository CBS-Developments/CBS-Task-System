import 'package:flutter/material.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';

class RadioButtonContainer extends StatefulWidget {
  final int groupValue;
  final int value;
  final ValueChanged<int?> onChanged;
  final String title;
  final Color radioColor;
  final Color titleColor;
  const RadioButtonContainer({Key? key, required this.title, required this.radioColor, required this.titleColor,  required this.value, required this.groupValue, required this.onChanged}) : super(key: key);

  @override
  State<RadioButtonContainer> createState() => _RadioButtonContainerState();
}

class _RadioButtonContainerState extends State<RadioButtonContainer> {
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      activeColor: widget.radioColor, // Custom radio button color
      value: widget.value,
      groupValue: widget.groupValue,
      onChanged: (int? value) {
        setState(() {
          widget.onChanged(value); // Call the onChanged function from the RadioButtonContainer
        });
      },
      title: Text(
        widget.title,
        style: TextStyle(color: widget.titleColor), // Custom title text color
      ),
    );
  }
}