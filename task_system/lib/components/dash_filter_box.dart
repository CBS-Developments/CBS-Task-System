import 'package:flutter/material.dart';
import 'package:task_system/components/filterBox_select.dart';
import 'package:task_system/sizes/dashboard_sizes.dart';

import '../sizes/create_MainTask_Sizes.dart';

class FilterBox extends StatelessWidget {
  const FilterBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: addDPadding(context)),
      //color: Colors.white,
      width: leftBoxWidth(context),
      height: filterBoxHeight(context),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 8.0),
            //padding: EdgeInsets.symmetric(horizontal: dropDownPadding(context)),
            width: filterBoxFirstWidth(context),
            color: Colors.white,
            child: Column(
              children: [
                 Row(
                  children: [
                    Text('Company'),
                  ],
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                Row(
                  children: [
                    FilterUnderBox(
                        dropdownItems: const [
                          'Item 1',
                          'Item 2',
                          'Item 3',
                          'Item 4'
                        ],
                        value: 'Item 1',
                        onChanged: (newValue) {
                          // Handle changes in selected item here
                          print('Selected Item: $newValue');
                        })
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 8.0),
            width: filterBoxFirstWidth(context),
            color: Colors.white,
            child: Column(
              children: [
                const Row(
                  children: [
                    Text('Source From'),
                  ],
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                Row(
                  children: [
                    FilterUnderBox(
                        dropdownItems: const [
                          'Item 1',
                          'Item 2',
                          'Item 3',
                          'Item 4'
                        ],
                        value: 'Item 1',
                        onChanged: (newValue) {
                          // Handle changes in selected item here
                          print('Selected Item: $newValue');
                        })
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 8.0),
            width: filterBoxFirstWidth(context),
            color: Colors.white,
            child: Column(
              children: [
                const Row(
                  children: [
                    Text('Assign To'),
                  ],
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                Row(
                  children: [
                    FilterUnderBox(
                        dropdownItems: const [
                          'Item 1',
                          'Item 2',
                          'Item 3',
                          'Item 4'
                        ],
                        value: 'Item 1',
                        onChanged: (newValue) {
                          // Handle changes in selected item here
                          print('Selected Item: $newValue');
                        })
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 8.0),
            width: filterBoxFirstWidth(context),
            color: Colors.white,
            child: Column(
              children: [
                const Row(
                  children: [
                    Text('Status'),
                  ],
                ),
                SizedBox(
                  height: smallBoxHeight(context),
                ),
                Row(
                  children: [
                    FilterUnderBox(
                        dropdownItems: const [
                          'Item 1',
                          'Item 2',
                          'Item 3',
                          'Item 4'
                        ],
                        value: 'Item 1',
                        onChanged: (newValue) {
                          // Handle changes in selected item here
                          print('Selected Item: $newValue');
                        })
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
