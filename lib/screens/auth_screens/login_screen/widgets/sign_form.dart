import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:project00/config/config.dart';
import 'package:project00/generic_widgets/generic.dart';

import '../../auth_screens.dart';



class SignForm extends StatefulWidget {
  const SignForm({Key key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenData.getProportionateScreenWidth(20)),
        child: Column(
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => email = value,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(emailNullError)) {
                  setState(() {
                    errors.remove(emailNullError);
                  });
                } else if (emailValidatorRegExp.hasMatch(value) &&
                    errors.contains(emailInvalidError)) {
                  setState(() {
                    errors.remove(emailInvalidError);
                  });
                }
                return null;
              },
              validator: (value) {
                if (value.isEmpty && !errors.contains(emailNullError)) {
                  setState(() {
                    errors.add(emailNullError);
                  });
                  return "";
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(emailInvalidError)) {
                  setState(() {
                    errors.add(emailInvalidError);
                  });
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Email",
                hintText: "Enter your email",
                suffixIcon: CustomSuffixIcon(
                  iconUrl: "assets/icons/Mail.svg",
                ),
              ),
            ),
            SizedBox(
              height: screenData.getProportionateScreenHeight(30),
            ),
            TextFormField(
              obscureText: true,
              onSaved: (value) => password = value,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(passwordNullError)) {
                  setState(() {
                    errors.remove(passwordNullError);
                  });
                } else if (value.length >= 8 &&
                    errors.contains(passwordShortError)) {
                  setState(() {
                    errors.remove(passwordShortError);
                  });
                }
              },
              validator: (value) {
                if (value.isEmpty && !errors.contains(passwordNullError)) {
                  setState(() {
                    errors.add(passwordNullError);
                  });
                } else if (value.length < 8 &&
                    !errors.contains(passwordShortError)) {
                  setState(() {
                    errors.add(passwordShortError);
                  });
                }
                return null;
              },
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Password",
                hintText: "Enter your password",
                suffixIcon: CustomSuffixIcon(
                  iconUrl: "assets/icons/Lock.svg",
                ),
              ),
            ),
            SizedBox(
              height: screenData.getProportionateScreenHeight(30),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: remember,
                  activeColor: Palette.primaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  },
                ),
                Text(
                  "Remember me",
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context){return ForgotPasswordScreen();}))},
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            FormError(errors: errors),
            SizedBox(
              height: screenData.getProportionateScreenHeight(20),
            ),
            DefaultButton(
              text: "Continue",
              onPressed: () {
                print(_formKey.currentState.validate());
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  Navigator.push(context, MaterialPageRoute(builder: (context){return LoginSuccessScreen();}));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
