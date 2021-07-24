import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/screens/screens.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Dont't have an account? ",
          style: TextStyle(
            fontSize: screenData.getProportionateScreenWidth(16),
          ),
        ),
        GestureDetector(
          onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context){return SignupScreen();}))},
          child: Text(
            "Sign up",
            style: TextStyle(
                fontSize: screenData.getProportionateScreenWidth(16),
                color: Palette.primaryColor),
          ),
        ),
      ],
    );
  }
}
