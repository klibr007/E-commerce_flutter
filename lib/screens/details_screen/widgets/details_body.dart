import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project00/generic_widgets/generic.dart';
import 'package:project00/models/Product.dart';
import 'package:project00/config/config.dart';
import 'package:project00/screens/details_screen/widgets/details.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  onTap: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(
                        product: product,
                      ),
                      TopRoundedContainer(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: screenData.size.width * 0.15,
                            right: screenData.size.width * 0.15,
                            top: screenData.getProportionateScreenWidth(15.00),
                            bottom: screenData.getProportionateScreenWidth(40)
                          ),
                          child: DefaultButton(
                            text: "Add to cart",
                          ),
                        ),
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
