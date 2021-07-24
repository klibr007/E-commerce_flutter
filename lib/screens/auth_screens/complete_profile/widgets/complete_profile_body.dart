import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/screens/auth_screens/complete_profile/widgets/complete_profile.dart';

class CompleteProfileBody extends StatelessWidget {
  const CompleteProfileBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenData.getProportionateScreenWidth(18)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenData.size.height * 0.02,
              ),
              Text(
                "Complete Profile",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: screenData.getProportionateScreenWidth(26.00),
                    fontWeight: FontWeight.bold,
                    height: 1.5),
              ),
              Text(
                "Complete your detail or continue \nwith your social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: screenData.size.height * 0.05,
              ),
              CompleteProfileForm(),
              SizedBox(
                height: screenData.getProportionateScreenHeight(30),
              ),
              Text(
                "By continuing you confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
