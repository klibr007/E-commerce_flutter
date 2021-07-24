import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/generic_widgets/default_button.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({Key key}) : super(key: key);

  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return Form(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              width: screenData.getProportionateScreenWidth(50),
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                obscureText: true,
                style: TextStyle(fontSize: 24.00),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: screenData.getProportionateScreenWidth(10)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Palette.textColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Palette.textColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Palette.textColor,
                    ),
                  ),
                ),
                onChanged: (value) {
                  nextField(value: value, focusNode: pin2FocusNode);
                },
              ),
            ),
            SizedBox(
              width: screenData.getProportionateScreenWidth(50),
              child: TextFormField(
                focusNode: pin2FocusNode,
                keyboardType: TextInputType.number,
                obscureText: true,
                style: TextStyle(fontSize: 24.00),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: screenData.getProportionateScreenWidth(10)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Palette.textColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Palette.textColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Palette.textColor,
                    ),
                  ),
                ),
                onChanged: (value) {
                  nextField(value: value, focusNode: pin3FocusNode);
                },
              ),
            ),
            SizedBox(
              width: screenData.getProportionateScreenWidth(50),
              child: TextFormField(
                focusNode: pin3FocusNode,
                keyboardType: TextInputType.number,
                obscureText: true,
                style: TextStyle(fontSize: 24.00),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: screenData.getProportionateScreenWidth(10)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Palette.textColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Palette.textColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Palette.textColor,
                    ),
                  ),
                ),
                onChanged: (value) {
                  nextField(value: value, focusNode: pin4FocusNode);
                },
              ),
            ),
            SizedBox(
              width: screenData.getProportionateScreenWidth(50),
              child: TextFormField(
                focusNode: pin4FocusNode,
                keyboardType: TextInputType.number,
                obscureText: true,
                style: TextStyle(fontSize: 24.00),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: screenData.getProportionateScreenWidth(10)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Palette.textColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Palette.textColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Palette.textColor,
                    ),
                  ),
                ),
                onChanged: (value) {
                  pin4FocusNode.unfocus();
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenData.size.height * 0.15,
        ),
        DefaultButton(text: "Continue", onPressed: (){})
      ],
    ));
  }
}
