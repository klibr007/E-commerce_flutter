import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';

class TopRoundedContainer extends StatelessWidget {
  final Widget child;
  final Color color;

  const TopRoundedContainer({Key key, @required this.child, @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return Container(
      padding: EdgeInsets.only(top: screenData.getProportionateScreenWidth(20)),
      margin: EdgeInsets.only(top: screenData.getProportionateScreenWidth(20)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}
