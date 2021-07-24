import 'package:flutter/material.dart';
import 'package:project00/config/palette.dart';

import 'generic.dart';

class RoundedPasswordFiedld extends StatelessWidget {

  final String hintText ;
  final IconData icon ;
  final ValueChanged<String> onChanged;

  const RoundedPasswordFiedld({Key key, this.hintText = "Password", this.icon = Icons.lock, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: Palette.primaryColor,
          ),
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.visibility,
            color: Palette.primaryColor,
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
