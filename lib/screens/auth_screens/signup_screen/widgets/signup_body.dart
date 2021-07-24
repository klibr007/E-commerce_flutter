import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/screens/auth_screens/login_screen/widgets/login.dart';

import 'signup.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: screenData.size.height * 0.03,
            ),
            Text(
              "Register Account",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: screenData.getProportionateScreenWidth(26.00),
                  fontWeight: FontWeight.bold,
                  height: 1.5),
            ),
            Text(
              "Complete your detail or continue \nwith sicial media",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: screenData.size.height * 0.06,
            ),
            SignupForm(),
            SizedBox(
              height: screenData.size.height * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconUrl: "assets/icons/google-icon.svg",
                  proportion: 40,
                  onPress: () {},
                ),
                SocialIcon(
                  iconUrl: "assets/icons/facebook-2.svg",
                  proportion: 40,
                  onPress: () {},
                ),
                SocialIcon(
                  iconUrl: "assets/icons/twitter1.svg",
                  proportion: 40,
                  onPress: () {},
                ),
              ],
            ),
            SizedBox(
              height: screenData.getProportionateScreenHeight(10),
            ),
            Text(
              "By continuing your confirm that you agree \nwith our Term and Condition",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
