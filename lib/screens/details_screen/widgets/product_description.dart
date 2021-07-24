import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project00/config/config.dart';
import 'package:project00/models/Product.dart';

class ProductDescription extends StatelessWidget {
  final Product product;
  final GestureTapCallback onTap;

  const ProductDescription(
      {Key key, @required this.product, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenData.getProportionateScreenWidth(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(screenData.getProportionateScreenWidth(15)),
            width: screenData.getProportionateScreenWidth(64),
            decoration: BoxDecoration(
                color:
                    product.isFavourite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              color:
                  product.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: screenData.getProportionateScreenWidth(20),
            right: screenData.getProportionateScreenWidth(64),
          ),
          child: Text(
            product.description,
            maxLines: 3,
            style: TextStyle(),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenData.getProportionateScreenWidth(20),
                vertical: 10),
            child: Row(
              children: <Widget>[
                Text(
                  "See More Detail",
                  style: TextStyle(
                    color: Palette.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Palette.primaryColor,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
