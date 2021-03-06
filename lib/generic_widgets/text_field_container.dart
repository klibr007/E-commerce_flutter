import 'package:flutter/material.dart';
import 'package:project00/config/palette.dart';

class TextFieldContainer extends StatelessWidget {

  final Widget child;

  const TextFieldContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: Palette.primaryLightColor,
      ),
      child: child,
    );
  }
}
