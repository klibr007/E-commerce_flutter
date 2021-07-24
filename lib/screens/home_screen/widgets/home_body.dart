import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project00/config/config.dart';
import 'package:project00/models/Product.dart';
import 'package:project00/screens/home_screen/widgets/home.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: screenData.getProportionateScreenWidth(20),
            ),
            HomeHeader(),
            SizedBox(
              height: screenData.getProportionateScreenWidth(10),
            ),
            DiscountBanner(),
            SizedBox(
              height: screenData.getProportionateScreenWidth(10),
            ),
            Categories(),
            SpecialOffer(),
            SizedBox(
              height: screenData.getProportionateScreenWidth(20),
            ),
            PopularProduct(),
            SizedBox(
              height: screenData.getProportionateScreenWidth(20),
            ),
          ],
        ),
      ),
    );
  }
}
