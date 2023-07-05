import 'package:flutter/material.dart';
import 'package:task_system/sizes/loginPage_Sizes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  padding: EdgeInsets.all(imagePadding(context)),
                  width: imageContWidth(context),
                  height: imageContHeight(context),
                  color: Colors.white,
                  child: Image.asset('images/log.png'),
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
