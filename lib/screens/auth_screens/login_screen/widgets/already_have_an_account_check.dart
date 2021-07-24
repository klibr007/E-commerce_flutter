import 'package:flutter/material.dart';
import 'package:project00/config/palette.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final Function onTap;
  final bool login;

  const AlreadyHaveAnAccountCheck(
      {Key key, @required this.onTap, this.login = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ? " : "Already have an Account ? ",
          style: TextStyle(color: Palette.primaryColor),
        ),
        GestureDetector(
          child: Text(
            login ? "Sign up !" : "Sign in !",
            style: TextStyle(
              color: Palette.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: onTap,
        ),
      ],
    );
  }
}
