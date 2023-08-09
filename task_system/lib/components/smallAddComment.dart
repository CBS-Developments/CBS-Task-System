import 'package:flutter/material.dart';
import 'package:task_system/colors/appColors.dart';

import '../sizes/create_MainTask_Sizes.dart';
import '../sizes/myTaskPage_Sizes.dart';
import '../sizes/openTask_Sizes.dart';

class SmallCommentBox extends StatelessWidget {
  final miniCommentController = TextEditingController();
   SmallCommentBox({Key? key}) : super(key: key);

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

          Container(
            padding: EdgeInsets.symmetric(horizontal: navBoxPadding(context)),
            width: miniAddCommentBoxWidth(context),
            height: miniAddCommentBoxHeight(context),
            // color: Colors.white,
            child: TextField(
              maxLines: 3,
              style: TextStyle(fontSize: commentFont(context)),
              controller: miniCommentController,
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
          ),

          Container(
            width:  miniAddCommentBoxWidth(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {  },
                  icon : Icon(Icons.attach_file_outlined,
                    color: Colors.blue,
                    size: attachIconScale(context),
                  ),
                ),

                IconButton(
                  onPressed: () {
                    print(miniCommentController);
                  },
                  icon : Icon(Icons.arrow_circle_right,
                    color: AppColor.teal,
                    size: miniIconButtonScale(context),
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
