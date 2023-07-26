import 'package:flutter/material.dart';

import '../../colors/appColors.dart';
import '../../components/appBar.dart';
import '../../components/datePickerBox.dart';
import '../../components/dropDownBox.dart';
import '../../components/mainBoxTextField.dart';
import '../../components/mainbox_Text.dart';
import '../../components/my_button.dart';
import '../../components/navigate_text.dart';
import '../../components/redio_button.dart';
import '../../components/search_box.dart';
import '../../drawers/mainTaskDrawer.dart';
import '../../sizes/create_MainTask_Sizes.dart';
import '../../sizes/dashboard_sizes.dart';
import '../../tabs/task_tab.dart';

class SubTask extends StatefulWidget {
  TextEditingController startDateControllerSub = TextEditingController();
  TextEditingController dueDateControllerSub = TextEditingController();

   SubTask({Key? key}) : super(key: key);

  @override
  State<SubTask> createState() => _SubTaskState();
}

class _SubTaskState extends State<SubTask> {
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
                      thirdText: 'Create Sub Task',
                    ),
                    SearchBox()
                  ],
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                TaskTabBar(
                  firstButtonColor: Colors.black,
                  secButtonColor: AppColor.tabBlueSelect,
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
                          // TextButton(
                          //   style: TextButton.styleFrom(
                          //     foregroundColor:
                          //     Colors.blue, // Set the text color here
                          //   ),
                          //   onPressed: () {},
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       Icon(
                          //         Icons.add_circle_outline,
                          //         color: AppColor.darkBlueC,
                          //         size: drawerIconScale(context),
                          //         // size: drawerIconScale(context),
                          //       ),
                          //       SizedBox(width: drawerMiniWidth(context)),
                          //       Text(
                          //         'Create Sub Task',
                          //         style: TextStyle(
                          //           fontSize: drawerFontLarge(context),
                          //           fontWeight: FontWeight.bold,
                          //           color: AppColor.darkBlueC,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
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
                            children: [MainBoxText(text: 'Company:')],
                          ),
                          Row(
                            children: [
                              MainBoxTextField(
                                  width: mainBoxTextFiFullWidth(context),
                                  hintText: 'Company Name'),
                            ],
                          ),
                          Row(
                            children: [MainBoxText(text: 'Sub Task Title:')],
                          ),
                          Row(
                            children: [
                              MainBoxTextField(
                                  width: mainBoxTextFiFullWidth(context),
                                  hintText: 'Sub Task Title'),
                            ],
                          ),
                          Row(
                            children: [MainBoxText(text: 'Description:')],
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
                              MainBoxText(
                                text: 'Source From:',
                              ),
                              MainBoxText(
                                text: 'Assign To:',
                              )
                            ],
                          ),
                          Row(
                            children: [
                              DropDownBox(
                                  width: dropDownWidth(context),
                                  dropdownItems: [
                                    'Item 1',
                                    'Item 2',
                                    'Item 3',
                                    'Item 4'
                                  ],
                                  value: 'Item 1',
                                  onChanged: (newValue) {
                                    // Handle changes in selected item here
                                    print('Selected Item: $newValue');
                                  }),

                              DropDownBox(
                                  width: dropDownWidth(context),
                                  dropdownItems: [
                                    'Item 1',
                                    'Item 2',
                                    'Item 3',
                                    'Item 4'
                                  ],
                                  value: 'Item 1',
                                  onChanged: (newValue) {
                                    // Handle changes in selected item here
                                    print('Selected Item: $newValue');
                                  }),
                            ],
                          ),
                          Row(
                            children: [
                              MainBoxText(
                                text: 'Start Date:',
                              ),
                              MainBoxText(
                                text: 'Due Date:',
                              )
                            ],
                          ),
                          Row(
                            children: [
                              DatePickerBox(controller: widget.startDateControllerSub, hintText: 'Enter Start Date',),
                              DatePickerBox(controller: widget.dueDateControllerSub, hintText: 'Enter Due Date',),

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
