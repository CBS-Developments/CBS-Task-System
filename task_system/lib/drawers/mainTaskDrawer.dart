import 'package:flutter/material.dart';
import 'package:task_system/colors/appColors.dart';
import 'package:task_system/drawers/mainDrawerButtn.dart';
import 'package:task_system/pages/dashboard/dashboard.dart';
import 'package:task_system/pages/tasks/myTaskPage.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';

class MainTaskDrawer extends StatelessWidget {
  const MainTaskDrawer({Key? key}) : super(key: key);

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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Dashboard()),
              );
            },
            fillColor: AppColor.lightBlue,
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
                    builder: (context) => MyTaskPage()),
              );
            },
            fillColor: Colors.white,
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
