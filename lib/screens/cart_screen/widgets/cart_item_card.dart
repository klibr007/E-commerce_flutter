import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/models/cart.dart';

class CartItemCard extends StatelessWidget {
  final Cart cart;

  const CartItemCard({Key key, @required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);
    return Row(
      children: <Widget>[
        SizedBox(
          width: screenData.getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: screenData.getProportionateScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              (cart.product.title),
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              maxLines: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text.rich(
              TextSpan(
                text: "\$${cart.product.price}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Palette.primaryColor,
                ),
                children: [
                  TextSpan(
                    text: "x${demoCarts[0].numOfItems}",
                    style: TextStyle(
                      color: Palette.textColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
