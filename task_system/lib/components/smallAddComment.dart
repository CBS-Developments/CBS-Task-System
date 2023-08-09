import 'package:flutter/material.dart';

import '../sizes/create_MainTask_Sizes.dart';
import '../sizes/myTaskPage_Sizes.dart';
import '../sizes/openTask_Sizes.dart';

class SmallCommentBox extends StatelessWidget {
  const SmallCommentBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: miniCommentBoxWidth(context),
      height: commentBoxHeight(context),
      margin: EdgeInsets.symmetric(horizontal: navBoxPadding(context)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey,
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.all(commentBoxPadding(context)),
            child: Text('Add Comment:',
                style: TextStyle(
                  fontSize: addCommentFont(context),
                  fontWeight: FontWeight.bold,
                )
            ),
          ),
        ],
      ),
    );
  }
}
