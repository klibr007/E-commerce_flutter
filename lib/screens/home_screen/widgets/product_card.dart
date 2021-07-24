import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project00/config/config.dart';
import 'package:project00/models/Product.dart';

class ProductCard extends StatelessWidget {
  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback onTap;

  const ProductCard(
      {Key key,
      this.width = 140,
      this.aspectRatio = 1.02,
      @required this.product,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return Padding(
      padding:
          EdgeInsets.only(left: screenData.getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: screenData.getProportionateScreenWidth(width),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(
                      screenData.getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: Palette.secondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: screenData.getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: Palette.primaryColor,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(
                          screenData.getProportionateScreenWidth(8)),
                      height: screenData.getProportionateScreenWidth(28),
                      width: screenData.getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                          color: product.isFavourite
                              ? Palette.primaryColor.withOpacity(0.15)
                              : Palette.secondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color: product.isFavourite
                            ? Color(0xFFFF4848)
                            : Color(0xFFDBDEE4),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
