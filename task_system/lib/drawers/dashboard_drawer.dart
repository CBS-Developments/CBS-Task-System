import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_system/pages/tasks/createMainTask.dart';

import '../colors/appColors.dart';
import '../sizes/create_MainTask_Sizes.dart';
import 'mainDrawerButtn.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      color: AppColor.lightBlue,
      width: drawerWidth(context),
      height: getPageHeight(context),

      child: Column(
        children: [
          SizedBox(height: smallBoxHeight(context),),

          MyDrawerButton(
            onTap: () {},
            fillColor: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.home_rounded,
                  color: AppColor.slateGray,
                  size: drawerIconScale(context),
                  // size: drawerIconScale(context),
                ),
                SizedBox(width: drawerMiniWidth(context)),
                Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: drawerFontLarge(context),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: smallBoxHeight(context),),

          MyDrawerButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MainTask()),
              );
            },
            fillColor: AppColor.lightBlue,
            child: Row(
              children: [
                Icon(
                  Icons.settings_rounded,
                  color: AppColor.slateGray,
                  size: drawerIconScale(context),
                  // size: drawerIconScale(context),
                ),
                SizedBox(width: drawerMiniWidth(context)),
                Text(
                  'Tasks',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: drawerFontLarge(context),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: smallBoxHeight(context),),

          MyDrawerButton(
            onTap: () {},
            fillColor: AppColor.lightBlue,
            child: Row(
              children: [
                Icon(
                  Icons.person_2_rounded,
                  color: AppColor.slateGray,
                  size: drawerIconScale(context),
                  // size: drawerIconScale(context),
                ),
                SizedBox(width: drawerMiniWidth(context)),
                Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: drawerFontLarge(context),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: smallBoxHeight(context),),

          MyDrawerButton(
            onTap: () {},
            fillColor: AppColor.lightBlue,
            child: Row(
              children: [
                Icon(
                  Icons.message_rounded,
                  color: AppColor.slateGray,
                  size: drawerIconScale(context),
                  // size: drawerIconScale(context),
                ),
                SizedBox(width: drawerMiniWidth(context)),
                Text(
                  'Chat',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: drawerFontLarge(context),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
