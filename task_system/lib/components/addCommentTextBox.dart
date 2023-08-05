import 'package:flutter/material.dart';
import 'package:task_system/sizes/openTask_Sizes.dart';

import '../sizes/create_MainTask_Sizes.dart';

class AddCommentTextBox extends StatelessWidget {
  final commentController = TextEditingController();
  AddCommentTextBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: navBoxPadding(context)),
      width: addCommentBoxWidth(context),
      height: addCommentBoxHeight(context),
      // color: Colors.white,
      child: TextField(
        maxLines: 3,
        style: TextStyle(fontSize: commentFont(context)),
        controller: commentController,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
            enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(5.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(5.0),
            ),
            fillColor: Colors.grey.shade300,
            filled: true,
            hintText: 'Type Anything..',
            hintStyle: TextStyle(color: Colors.grey[600],fontSize: commentFont(context)
            )
        ),
      ),
    );
  }
}
