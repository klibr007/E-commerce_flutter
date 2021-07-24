import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: screenData.getProportionateScreenWidth(20.00),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: screenData.getProportionateScreenWidth(20.00),
        vertical: screenData.getProportionateScreenWidth(15),
      ),
      width: double.infinity,
      //height: 90.00,
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20.00),
      ),
      child: Text.rich(
        TextSpan(
          text: "A Summer Surprise\n",
          style: TextStyle(
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: "Cashback 20%",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
