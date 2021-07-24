import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  final GestureTapCallback onTap;

  const SectionTitle({Key key, @required this.text, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: screenData.getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: screenData.getProportionateScreenWidth(16),
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text("See More"),
          ),
        ],
      ),
    );
  }
}
