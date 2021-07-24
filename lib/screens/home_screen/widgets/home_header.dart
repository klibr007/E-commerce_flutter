import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/screens/cart_screen/cart_screen.dart';

import 'home.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenData.getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SearchField(),
          IconBtnWithCounter(
            svgUrl: "assets/icons/Cart Icon.svg",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CartScreen();
                  },
                ),
              );
            },
          ),
          IconBtnWithCounter(
            svgUrl: "assets/icons/Bell.svg",
            onTap: () {},
            numItem: 3,
          ),
        ],
      ),
    );
  }
}
