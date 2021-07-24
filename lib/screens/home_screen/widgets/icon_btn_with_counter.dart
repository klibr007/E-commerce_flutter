import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project00/config/config.dart';

class IconBtnWithCounter extends StatelessWidget {
  final String svgUrl;
  final int numItem;
  final GestureTapCallback onTap;

  const IconBtnWithCounter(
      {Key key, @required this.svgUrl, this.numItem, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(screenData.getProportionateScreenWidth(12)),
            height: screenData.getProportionateScreenWidth(40),
            width: screenData.getProportionateScreenWidth(40),
            decoration: BoxDecoration(
              color: Palette.secondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgUrl),
          ),
          if(numItem != null)
            Positioned(
              right: 0.0,
              top: -3.0,
              child: Container(
                height: screenData.getProportionateScreenWidth(14),
                width: screenData.getProportionateScreenWidth(14),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                    "$numItem",
                    style: TextStyle(
                      fontSize: screenData.getProportionateScreenWidth(10),
                      color: Colors.white,
                      height: 1.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
