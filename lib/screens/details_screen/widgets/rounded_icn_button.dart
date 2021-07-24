import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';

class RoundedIcnButton extends StatelessWidget {
  final IconData iconData;
  final GestureTapCallback onTap;

  const RoundedIcnButton({Key key, @required this.iconData, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return SizedBox(
      height: screenData.getProportionateScreenWidth(40),
      width: screenData.getProportionateScreenWidth(40),
      child: TextButton(
        onPressed: onTap,
        child: Icon(
          iconData,
          color: Colors.black,
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
