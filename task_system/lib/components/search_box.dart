import 'package:flutter/material.dart';
import 'package:task_system/sizes/create_MainTask_Sizes.dart';

class SearchBox extends StatelessWidget {
  final searchController = TextEditingController();
  SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: navBoxPadding(context)),
      width: serBoxWidth(context),
      height: serBoxHeight(context),
      // color: Colors.white,
      child: TextField(
        controller: searchController,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
            suffixIcon: Icon(Icons.search,color: Colors.grey,size: drawerIconScale(context),),
            enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(20.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(20.0),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey[500],fontSize: navTextFont(context)
            )
        ),
      ),
    );
  }
}
