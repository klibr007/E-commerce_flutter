import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/models/Product.dart';

import 'details.dart';

class ColorDots extends StatelessWidget {
  final Product product;

  const ColorDots({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    MediaQueryData screenData = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: screenData.getProportionateScreenWidth(20)),
      child: Row(
        children: <Widget>[
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIcnButton(iconData: Icons.remove, onTap: () {}),
          SizedBox(
            width: screenData.getProportionateScreenWidth(15),
          ),
          RoundedIcnButton(iconData: Icons.add, onTap: () {})
        ],
      ),
    );
  }
}
