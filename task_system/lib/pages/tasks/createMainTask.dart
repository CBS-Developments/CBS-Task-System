import 'package:flutter/material.dart';
import 'package:task_system/colors/appColors.dart';
import 'package:task_system/components/appBar.dart';
import 'package:task_system/components/mainBoxTextField.dart';
import 'package:task_system/components/navigate_text.dart';
import 'package:task_system/components/redio_button.dart';
import 'package:task_system/components/search_box.dart';
import 'package:task_system/drawers/mainTaskDrawer.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';
import 'package:task_system/tabs/task_tab.dart';

import '../../components/mainbox_Text.dart';
import '../../components/my_button.dart';
import '../../sizes/dashboard_sizes.dart';

class MainTask extends StatefulWidget {
  const MainTask({Key? key}) : super(key: key);

  @override
  State<MainTask> createState() => _MainTaskState();
}

class _MainTaskState extends State<MainTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      body: Row(
        children: [
          MainTaskDrawer(), // Call myDrawer as a function and pass the context

          Container(
            width: rightSideWidth(context),
            height: getPageHeight(context),
            // color: Colors.blueAccent,
            child: Column(
              children: [
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NavigateText(
                      firstText: 'Task Dashboard/',
                      secText: 'Main Task/',
                      thirdText: 'Create Main Task',
                    ),
                    SearchBox()
                  ],
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                TaskTabBar(
                  firstButtonColor: AppColor.tabBlueSelect,
                  secButtonColor: Colors.black,
                  thirdButtonColor: Colors.black,
                  fourthButtonColor: Colors.black,
                  fivethButtonColor: Colors.black,
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: addDPadding(context)),
                      // color: Colors.grey,
                      height: navBoxHeight(context),
                      width: addDWidth(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  Colors.black, // Set the text color here
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.black,
                                  size: drawerIconScale(context),
                                  // size: drawerIconScale(context),
                                ),
                                SizedBox(width: drawerMiniWidth(context)),
                                Text(
                                  'Add Details',
                                  style: TextStyle(
                                      fontSize: drawerFontLarge(context),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  Colors.blue, // Set the text color here
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_circle_outline,
                                  color: AppColor.darkBlueC,
                                  size: drawerIconScale(context),
                                  // size: drawerIconScale(context),
                                ),
                                SizedBox(width: drawerMiniWidth(context)),
                                Text(
                                  'Create Sub Task',
                                  style: TextStyle(
                                    fontSize: drawerFontLarge(context),
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkBlueC,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: sizeBoxWidthS(context),
                    ),
                    Container(
                      // color: Colors.blueGrey,
                      height: navBoxHeight(context),
                      width: addDRWidth(context),
                      padding: EdgeInsets.symmetric(
                          horizontal: navBoxPadding(context)),
                      child: Row(
                        children: [
                          Text(
                            'Select Priority',
                            style: TextStyle(
                                fontSize: drawerFontLarge(context),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
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
                      color: Colors.white,
                      height: mainBoxHeight(context),
                      width: addDWidth(context),
                      child: Column(
                        children: [
                          Row(
                            children: [
                            MainBoxText(text: 'First Name:',),
                            MainBoxText(text: 'Last Name:',)
                          ],),
                          
                          Row(
                            children: [
                              MainBoxTextField(
                                width: mainBoxTextFiHalfWidth(context),
                                hintText: 'First Name',
                              ),

                              MainBoxTextField(
                                width: mainBoxTextFiHalfWidth(context),
                                hintText: 'Last Name',
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              MainBoxText(text: 'Company:')
                            ],
                          ),

                          Row(
                            children: [
                              MainBoxTextField(
                                width: mainBoxTextFiFullWidth(context),
                                  hintText: 'Company name'),
                            ],
                          ),

                          Row(
                            children: [
                              MainBoxText(text: 'Task Title:')
                            ],
                          ),

                          Row(
                            children: [
                              MainBoxTextField(
                                  width: mainBoxTextFiFullWidth(context),
                                  hintText: 'Task Title'),
                            ],
                          ),

                          Row(
                            children: [
                              MainBoxText(text: 'Description:')
                            ],
                          ),

                          Row(
                            children: [
                              MainBoxTextField(
                                  width: mainBoxTextFiFullWidth(context),
                                  hintText: 'Add Description'),
                            ],
                          ),

                          Row(
                            children: [
                              MainBoxText(text: 'Source From:',),
                              MainBoxText(text: 'Assign To:',)
                            ],),

                          Row(
                            children: [
                              MainBoxTextField(
                                width: mainBoxTextFiHalfWidth(context),
                                hintText: '',
                              ),

                              MainBoxTextField(
                                width: mainBoxTextFiHalfWidth(context),
                                hintText: '',
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              MainBoxText(text: 'Start Date:',),
                              MainBoxText(text: 'Due Date:',)
                            ],),

                          Row(
                            children: [
                              MainBoxTextField(
                                width: mainBoxTextFiHalfWidth(context),
                                hintText: '',
                              ),

                              MainBoxTextField(
                                width: mainBoxTextFiHalfWidth(context),
                                hintText: '',
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: sizeBoxWidthS(context),
                    ),


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.white,
                          height: addDRHeight(context),
                          width: addDRWidth(context),
                          child: Column(
                            children: [
                              RadioButtonContainer(
                                title: 'Top Urgent',
                                radioColor: AppColor.topUr,
                                titleColor: AppColor.topUr,
                                value: 1,
                                groupValue: 1,
                                onChanged: (int? value) {},
                              ),
                              RadioButtonContainer(
                                title: 'Urgent Within 24hr',
                                radioColor: AppColor.urgent24,
                                titleColor: AppColor.urgent24,
                                value: 2,
                                groupValue: 2,
                                onChanged: (int? value) {},
                              ),
                              RadioButtonContainer(
                                title: 'Low',
                                radioColor: AppColor.low,
                                titleColor: AppColor.low,
                                value: 3,
                                groupValue: 3,
                                onChanged: (int? value) {},
                              ),
                              RadioButtonContainer(
                                title: 'Medium',
                                radioColor: AppColor.medium,
                                titleColor: AppColor.medium,
                                value: 4,
                                groupValue: 4,
                                onChanged: (int? value) {},
                              ),
                              RadioButtonContainer(
                                title: 'Regular',
                                radioColor: AppColor.regular,
                                titleColor: AppColor.regular,
                                value: 5,
                                groupValue: 5,
                                onChanged: (int? value) {},
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: smallBoxHeight(context),
                        ),

                        Container(
                          height: buttonCHeight(context),
                          width: buttonCWidth(context),
                          // color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MyButton(onTap: () {  }, childText: 'Save',),
                              MyButton(onTap: () {  }, childText: 'Cancel',)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
