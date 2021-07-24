import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project00/config/config.dart';

class CategoryCard extends StatelessWidget {
  final String svgUrl, text;
  final GestureTapCallback onTap;

  const CategoryCard(
      {Key key,
      @required this.svgUrl,
      @required this.text,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: screenData.getProportionateScreenWidth(50),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.00,
              child: Container(
                height: screenData.getProportionateScreenWidth(55),
                width: screenData.getProportionateScreenWidth(55),
                padding:
                    EdgeInsets.all(screenData.getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(svgUrl),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
