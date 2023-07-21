import 'package:flutter/material.dart';
import 'package:task_system/sizes/dashboard_sizes.dart';

import '../sizes/create_MainTask_Sizes.dart';

class FilterBox extends StatelessWidget {
  const FilterBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: addDPadding(context)),
      color: Colors.teal,
      width: filterBoxWidth(context),
      height: filterBoxHeight(context),
    );
  }
}
