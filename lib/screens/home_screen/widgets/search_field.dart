import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return Container(
      width: screenData.size.width * 0.6,
      //height: 50,
      decoration: BoxDecoration(
        color: Palette.secondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) {
          //search value
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Search Product",
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
              horizontal:
              screenData.getProportionateScreenWidth(20),
              vertical:
              screenData.getProportionateScreenWidth(9)),
        ),
      ),
    );
  }
}
