import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/generic_widgets/generic.dart';
import 'package:project00/screens/welcome_screen/widgets/welcome.dart';

import '../../screens.dart';

class WelcomeBody extends StatefulWidget {
  const WelcomeBody({Key key}) : super(key: key);

  @override
  _WelcomeBodyState createState() => _WelcomeBodyState();
}

class _WelcomeBodyState extends State<WelcomeBody> {
  int currentPage = 0;
  List<Map<String, String>> welcomeData = [
    {
      "contentText": "Welcome to the project00. Let' start!",
      "imageUrl": "assets/images/splash_1.png"
    },
    {
      "contentText": "We help people to get connected \nin Benin city!",
      "imageUrl": "assets/images/splash_2.png"
    },
    {
      "contentText":
          "We give you an easy way to find somebody \nthat has what you want!",
      "imageUrl": "assets/images/splash_3.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: welcomeData.length,
                itemBuilder: (context, index) => WelcomeContents(
                  contentText: welcomeData[index]["contentText"],
                  imageUrl: welcomeData[index]["imageUrl"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenData.getProportionateScreenHeight(56),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        welcomeData.length,
                        (index) => buildDot(index),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: "Continue",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginScreen();
                            },
                          ),
                        );
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: Palette.animationDuration,
      margin: EdgeInsets.only(right: 5),
      width: currentPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Palette.primaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
