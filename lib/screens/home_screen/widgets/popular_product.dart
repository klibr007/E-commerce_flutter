import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/models/Product.dart';
import 'package:project00/screens/screens.dart';

import 'home.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          onTap: () {},
        ),
        SizedBox(
          height: screenData.getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailsScreen(product: demoProducts[index],);
                        },
                      ),
                    );
                  },
                  product: demoProducts[index],
                ),
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
