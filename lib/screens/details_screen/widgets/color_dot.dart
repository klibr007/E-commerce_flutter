import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/models/Product.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({
    Key key,
    @required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(screenData.getProportionateScreenWidth(8)),
      width: screenData.getProportionateScreenWidth(40),
      height: screenData.getProportionateScreenWidth(40),
      decoration: BoxDecoration(
          //color: product.colors[0],
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? Palette.primaryColor : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
