import 'package:flutter/material.dart';
import 'package:task_system/colors/appColors.dart';
import 'package:task_system/drawers/mainDrawerButtn.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';

class MainTaskDrawer extends StatelessWidget {
  const MainTaskDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.lightBlue,
      width: getPageWidth(context),
      height: getPageHeight(context),

      child: Column(
        children: [
          SizedBox(height: smallBoxHeight(context),),

          MyDrawerButton(
            onTap: () {},
            fillColor: Colors.white,
            child: Row(
              children: [
                Icon(
                  Icons.dashboard_rounded,
                  color: AppColor.slateGray,
                  size: drawerIconScale(context),
                  // size: drawerIconScale(context),
                ),
                SizedBox(width: drawerMiniWidth(context)),
                Text(
                  'DASHBOARD',
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
