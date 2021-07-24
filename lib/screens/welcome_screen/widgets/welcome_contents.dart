import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';

class WelcomeContents extends StatelessWidget {
  final String contentText;
  final String imageUrl;

  const WelcomeContents({Key key, @required this.contentText, @required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "PROJECT00",
          style: TextStyle(
            fontSize: screenData.getProportionateScreenHeight(36),
            color: Palette.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(contentText, textAlign: TextAlign.center,),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          imageUrl,
          height: screenData.getProportionateScreenHeight(265),
        )
      ],
    );
  }
}
