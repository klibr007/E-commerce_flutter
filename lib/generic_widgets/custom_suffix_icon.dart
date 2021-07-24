import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project00/config/config.dart';

class CustomSuffixIcon extends StatelessWidget {
  final String iconUrl;

  const CustomSuffixIcon({Key key, @required this.iconUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0.0,
        screenData.getProportionateScreenWidth(20.0),
        screenData.getProportionateScreenWidth(20.0),
        screenData.getProportionateScreenWidth(20.0),
      ),
      child: SvgPicture.asset(
        iconUrl,
        height: screenData.getProportionateScreenHeight(18.0),
      ),
    );
  }
}
