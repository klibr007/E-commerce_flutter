import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/generic_widgets/generic.dart';

import 'login.dart';


class LoginBody extends StatelessWidget {
  const LoginBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenData.getProportionateScreenWidth(10)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: screenData.size.height * 0.04,
                ),
                Text(
                  "Welcome back",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: screenData.getProportionateScreenHeight(28)),
                ),
                Text(
                  "Sign in with your number, your email \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: screenData.size.height * 0.08,
                ),
                SignForm(),
                SizedBox(
                  height: screenData.size.height * 0.08,
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
                  height: screenData.getProportionateScreenHeight(20),
                ),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
