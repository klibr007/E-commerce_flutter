import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project00/config/config.dart';

class FormError extends StatelessWidget {
  final List<String> errors;

  const FormError({Key key, @required this.errors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);
    return Column(
      children: List.generate(errors.length, (index) => FormErrorText(screenData, errors[index])),
    );
  }

  Row FormErrorText(MediaQueryData screenData, String error){
    return Row(
      children: <Widget>[
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: screenData.getProportionateScreenHeight(14),
          width: screenData.getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: screenData.getProportionateScreenWidth(10),
        ),
        Text(error),
      ],
    );
  }
}