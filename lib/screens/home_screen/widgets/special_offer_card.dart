import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';

class SpecialOfferCard extends StatelessWidget {
  final String category, imageUrl;
  final int numOfBrand;
  final GestureTapCallback onTap;

  const SpecialOfferCard(
      {Key key,
      @required this.category,
      @required this.imageUrl,
      @required this.numOfBrand,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.only(left: screenData.getProportionateScreenWidth(20.00)),
      child: SizedBox(
        width: screenData.getProportionateScreenWidth(242),
        height: screenData.getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: <Widget>[
              Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenData.getProportionateScreenWidth(15),
                      vertical: screenData.getProportionateScreenWidth(10)),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: screenData.getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrand Brands")
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
