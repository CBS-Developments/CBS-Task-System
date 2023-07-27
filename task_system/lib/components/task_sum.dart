// import 'package:flutter/material.dart';
// import 'package:task_system/sizes/create_MainTask_Sizes.dart';
//
// import '../sizes/dashboard_sizes.dart';
//
// class TaskDetails extends StatelessWidget {
//   const TaskDetails({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: rightDownBoxSeparateWidth(context),
//       height: rightDownBoxSeparateHeight(context),
//       color: Colors.grey,
//
//       child: Column(
//         children: [
//           Row(
//             //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//
//             children: [
//               Container(
//                 width: rightDownBoxSeparateWidth(context),
//                 height: taskSum01(context),
//                 //color: Colors.indigo,
//                 child: Row(
//                   children: [
//                     SizedBox(width: smallBoxHeight(context),),
//
//                     Text('01. dine_0606#1680502025756'),
//
//                     SizedBox(width: smallBoxHeight(context),),
//
//                     Text('Date')
//                   ],
//
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';

import '../sizes/dashboard_sizes.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: rightDownBoxSeparateWidth(context),
      height: rightDownBoxSeparateHeight(context),
      color: Colors.grey,
      child: Stack(
        children: [
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: taskSum01(context),
                  child: Row(
                    children: [
                      SizedBox(width: smallBoxHeight(context)),
                      Text('01. dine_0606#1680502025756'),
                      SizedBox(width: smallBoxHeight(context)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Medium'),
                SizedBox(width: smallBoxHeight(context)),
                Text('Pending'),
                SizedBox(width: smallBoxHeight(context)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



