import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';

import 'forgot_pass_form.dart';


class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenData.getProportionateScreenWidth(20)),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: screenData.size.height * 0.1,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: screenData.getProportionateScreenWidth(25),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will send \nsend you a link to change it",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: screenData.size.height * 0.1,
              ),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}
