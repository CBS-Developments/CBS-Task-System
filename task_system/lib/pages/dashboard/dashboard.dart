import 'package:flutter/material.dart';
import 'package:task_system/components/appBar.dart';
import 'package:task_system/drawers/dashboard_drawer.dart';

import '../../sizes/create_MainTask_Sizes.dart';
import '../../sizes/dashboard_sizes.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      body: Row(
        children: [
          DashboardDrawer(),

          Container(
            width: rightSideWidth(context),
            height: getPageHeight(context),

            child: Column(
              children: [
                Row(

                )
              ],
            ),


          )

        ],
      ),

    );
  }
}
