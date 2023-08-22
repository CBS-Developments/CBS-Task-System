import 'package:flutter/material.dart';
import 'package:task_system/components/loginBox.dart';
import 'package:task_system/components/my_button.dart';
import 'package:task_system/pages/dashboard/dashboard.dart';
import 'package:task_system/sizes/loginPage_Sizes.dart';

import '../components/login_textfeild.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: getXLBoxHeight(context),
            ),
            Text(
              'CBS TASK SYSTEM',
              style: TextStyle(
                  fontSize: getFontXXXL(context),
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: getXLBoxHeight(context),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(imagePadding(context)),
                  width: imageContWidth(context),
                  height: imageContHeight(context),
                  color: Colors.white,
                  child: Image.asset('images/log.png'),
                ),
                LoginBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: getXLBoxHeight(context),
                        width: ContWidth(context),
                      ),
                      Text(
                        'User Login',
                        style: TextStyle(fontSize: getFontXL(context)),
                      ),
                      SizedBox(
                        height: sizeBoxLHeight(context),
                      ),
                      const LoginTextField(
                        labelText: 'User Name',
                      ),
                      SizedBox(
                        height: sizeBoxMHeight(context),
                      ),
                      LoginTextField(
                        labelText: 'Password',
                      ),
                      SizedBox(
                        height: sizeBoxLHeight(context),
                      ),
                      MyButton(onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Dashboard()),
                        );
                      }, childText: 'Login'),
                      SizedBox(
                        height: sizeBoxLHeight(context),
                      ),
                      Text(
                        '- Or -',
                        style: TextStyle(
                            color: Colors.grey, fontSize: buttonFont(context)),
                      ),
                      SizedBox(
                        height: sizeBoxLHeight(context),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('images/google.png',
                            width: tileWidth(context),),

                          Image.asset('images/apple.png',
                            width: tileWidth(context),),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
