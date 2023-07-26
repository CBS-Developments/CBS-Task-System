import 'package:flutter/material.dart';
import 'package:task_system/components/filterBox_select.dart';
import 'package:task_system/sizes/dashboard_sizes.dart';

import '../sizes/create_MainTask_Sizes.dart';

class FilterBox extends StatelessWidget {
  const FilterBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: addDPadding(context)),
      color: Colors.white,
      width: leftBoxWidth(context),
      height: filterBoxHeight(context),
      
      child: Row(
        children: [
          Container(
            width: filterBoxFirstWidth(context),
            color: Colors.white,
            child: Column(
              children: [
                const Row(
                  children: [
                    Text('Company'),
                  ],
                ),

                SizedBox(height: smallBoxHeight(context),),

                Row(
                  children: [
                    FilterUnderBox(
                        dropdownItems:
                        [
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
            width: filterBoxFirstWidth(context),
            color: Colors.white,
            child: Column(
              children: [
                const Row(
                  children: [
                    Text('Source From'),
                  ],
                ),

                SizedBox(height: smallBoxHeight(context),),

                Row(
                  children: [
                    FilterUnderBox(
                        dropdownItems:
                        const [
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
            width: filterBoxFirstWidth(context),
            color: Colors.white,
            child: Column(
              children: [
                const Row(
                  children: [
                    Text('Assign To'),
                  ],
                ),

                SizedBox(height: smallBoxHeight(context),),

                Row(
                  children: [
                    FilterUnderBox(
                        dropdownItems:
                        const [
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
            width: filterBoxFirstWidth(context),
            color: Colors.white,
            child: Column(
              children: [
                const Row(
                  children: [
                    Text('Status'),
                  ],
                ),

                SizedBox(height: smallBoxHeight(context),),

                Row(
                  children: [
                    FilterUnderBox(
                        dropdownItems:
                        const [
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
