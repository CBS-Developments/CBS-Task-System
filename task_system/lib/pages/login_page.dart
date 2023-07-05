import 'package:flutter/material.dart';
import 'package:task_system/sizes/loginPage_Sizes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: getXLBoxHeight(context),),

            Text('CBS TASK SYSTEM',
              style: TextStyle(
                  fontSize: getFontXXXL(context),
                  color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: getXLBoxHeight(context),),


            Row(
              children: [
                Container(
                  width: imageContWidth(context),
                  height: imageContHeight(context),
                  color: Colors.blueAccent,
                ),

                Container(
                  width: imageContWidth(context),
                  height: imageContHeight(context),
                  color: Colors.yellowAccent,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
