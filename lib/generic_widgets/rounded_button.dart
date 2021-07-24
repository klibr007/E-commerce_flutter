import 'package:flutter/material.dart';
import 'package:project00/config/palette.dart';

class RoundedButton extends StatelessWidget {
  final Function onPress;
  final String text;
  final Color textColor;
  final Color backgroundColor;

  const RoundedButton(
      {Key key,
      @required this.text,
      this.textColor = Colors.white,
      this.backgroundColor = Palette.primaryColor,
      @required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          style: TextButton.styleFrom(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            backgroundColor: backgroundColor,
          ),
        ),
      ),
    );
  }
}
