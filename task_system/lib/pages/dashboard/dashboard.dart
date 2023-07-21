import 'package:flutter/material.dart';
import 'package:task_system/components/add_Calendar.dart';
import 'package:task_system/components/appBar.dart';
import 'package:task_system/components/dash_filter_box.dart';
import 'package:task_system/components/navigate_text.dart';
import 'package:task_system/components/search_box.dart';
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
          const DashboardDrawer(),
          Container(
            width: rightSideWidth(context),
            height: getPageHeight(context),
            child: Column(
              children: [
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const NavigateText(
                      firstText: 'Dashboard/ ',
                      secText: 'Main Dashboard/ ',
                      thirdText: 'Internal User',
                    ),
                    SearchBox(),
                  ],
                ),

                SizedBox(
                  height: smallBoxHeight(context),
                ),

                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: addDPadding(context)),
                      //color: Colors.green,
                      width: leftBoxWidth(context),
                      height: leftBoxHeight(context),
                      child: Column(
                        children: [
                          FilterBox(),
                          SizedBox(
                            height: smallBoxHeight(context),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: addDPadding(context)),
                            color: Colors.lightBlue,
                            height: rightDownBoxHeight(context),
                            width: leftBoxWidth(context),
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: addDPadding(context)),
                        //color: Colors.amber,
                        width: rightBoxWidth(context),
                        height: rightBoxHeight(context),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.grey,
                          width: addDRWidth(context),
                          height: notiBoxHeight(context),
                          child: Row(
                            children: [
                              Text('Notifications',
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                              Row(
                                children: [
                                  Icon(Icons.notifications_active)
                                ],
                              )
                            ],
                          ),
                        ),

                        SizedBox( height: smallBoxHeight(context),),

                        Container(
                          child: Column(
                            children: [
                              AddCalendar(),
                            ],
                          ),
                        )

                      ],
                    ),),




                  ],
                )

                // Row(
                //   children: [
                //     FilterBox()
                //   ],
                // ),
                //
                // SizedBox(height: smallBoxHeight(context),),
                //
                // Row(
                //   children: [
                //     Container(
                //       margin: EdgeInsets.symmetric(
                //           horizontal: addDPadding(context)),
                //       color: Colors.lightBlue,
                //       height: mainBoxHeight(context),
                //       width: addDWidth(context),
                //     )
                //   ],
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
