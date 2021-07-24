import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/screens/auth_screens/OTP/widgets/otp.dart';

class OTPVerfificationBody extends StatelessWidget {
  const OTPVerfificationBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenData.getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: screenData.size.height * 0.05,
              ),
              Text(
                "OTP verification",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: screenData.getProportionateScreenHeight(28),
                ),
              ),
              Text(
                "We sent your code to +1 898 860 ***",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "This code will expire in ",
                  ),
                  TweenAnimationBuilder(
                    tween: Tween(
                      begin: 30.0,
                      end: 0.0,
                    ),
                    duration: Duration(seconds: 30),
                    builder: (context, value, child) => Text(
                      "00:${value.toInt()}",
                      style: TextStyle(color: Palette.primaryColor),
                    ),
                    onEnd: () {},
                  )
                ],
              ),
              SizedBox(
                height: screenData.size.height * 0.15,
              ),
              OTPForm(),
              SizedBox(
                height: screenData.size.height * 0.1,
              ),
              GestureDetector(
                child: Text(
                  "Resend OTP code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
