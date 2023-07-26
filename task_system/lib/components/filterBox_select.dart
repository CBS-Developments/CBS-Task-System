import 'package:flutter/material.dart';

import '../sizes/create_MainTask_Sizes.dart';
import '../sizes/dashboard_sizes.dart';

class FilterUnderBox extends StatelessWidget {
  final List<String> dropdownItems;
  final String value;
  final ValueChanged<String> onChanged;

  FilterUnderBox({Key? key,
    required this.dropdownItems,
    required this.value,
    required this.onChanged}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Container(
      width: filterBoxFirstSelectWidth(context),
      height: filterBoxFirstSelectHeight(context),
      margin: EdgeInsets.symmetric(horizontal: dropDownMargin(context)),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white70),
        borderRadius: BorderRadius.circular(3.0),
        color: Colors.grey[100]
      ),
      child: DropdownButton<String>(
        value: value,
        hint: Text('All'),
        onChanged: (newValue) {onChanged;},
        style: TextStyle(fontSize: filterBoxTextFont(context)),
        items: dropdownItems.map((item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
      ),
    );
  }
}