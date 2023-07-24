import 'package:flutter/material.dart';

import '../sizes/create_MainTask_Sizes.dart';

class DropDownBox extends StatelessWidget {
  final width;
  final List<String> dropdownItems;
  final String value;
  final ValueChanged<String> onChanged;

  DropDownBox({Key? key,
    required this.dropdownItems,
    required this.value,
    required this.onChanged, this.width}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      height: mainBoxTextFiHeight(context),
      margin: EdgeInsets.symmetric(horizontal: dropDownMargin(context)),
      padding: EdgeInsets.symmetric(horizontal: dropDownPadding(context)),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: DropdownButton<String>(
        value: value,
        hint: Text('Select an item'),
        onChanged: (newValue) {onChanged;},
        style: TextStyle(fontSize: mainBoxTextFiFont(context)),
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
