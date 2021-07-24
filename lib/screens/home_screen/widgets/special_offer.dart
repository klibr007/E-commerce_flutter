import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'home.dart';

class SpecialOffer extends StatelessWidget {

  const SpecialOffer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return Column(
      children: [
        SectionTitle(
          text: "Special for you",
          onTap: () {},
        ),
        SizedBox(height: screenData.getProportionateScreenWidth(20),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                imageUrl: "assets/images/Image Banner 2.png",
                numOfBrand: 8,
                category: "Smartphone",
                onTap: () {},
              ),
              SpecialOfferCard(
                imageUrl: "assets/images/Image Banner 3.png",
                numOfBrand: 24,
                category: "Fashion",
                onTap: () {},
              ),
              SizedBox(
                width: screenData.getProportionateScreenWidth(20.00),
              )
            ],
          ),
        ),
      ],
    );
  }
}
