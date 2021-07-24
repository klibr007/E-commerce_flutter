import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project00/config/config.dart';

class SocialIcon extends StatelessWidget {
  final String iconUrl;
  final double proportion;
  final Function onPress;

  const SocialIcon(
      {Key key,
      @required this.iconUrl,
      @required this.proportion,
      this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: screenData.getProportionateScreenWidth(10.00)),
        padding: EdgeInsets.all(screenData.getProportionateScreenWidth(7)),
        height: screenData.getProportionateScreenHeight(proportion),
        width: screenData.getProportionateScreenWidth(proportion),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconUrl,
        ),
      ),
    );
  }
}
