import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/generic_widgets/default_button.dart';
import 'package:project00/screens/home_screen/home_screen.dart';

class LoginSuccessBody extends StatelessWidget {
  const LoginSuccessBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);
    return Column(
      children: <Widget>[
        SizedBox(
          height: screenData.size.height * 0.04,
        ),
        Image.asset(
          "assets/images/success.png",
          height: screenData.size.height * 0.4,
        ),
        SizedBox(
          height: screenData.size.height * 0.08,
        ),
        Text(
          "Login Success",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenData.getProportionateScreenWidth(22.00),
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: screenData.size.width * 0.6,
          child: DefaultButton(
            text: "Back to home",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
