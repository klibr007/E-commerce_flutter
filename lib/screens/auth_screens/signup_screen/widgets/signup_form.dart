import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/generic_widgets/generic.dart';
import 'package:project00/screens/auth_screens/auth_screens.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key key}) : super(key: key);

  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String conformPassword;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenData.getProportionateScreenWidth(20.00)),
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
                },
                validator: (value) {
                  if (value.isEmpty && !errors.contains(emailNullError)) {
                    setState(() {
                      errors.add(emailNullError);
                    });
                  } else if (!emailValidatorRegExp.hasMatch(value) &&
                      !errors.contains(emailInvalidError)) {
                    setState(() {
                      errors.add(emailInvalidError);
                    });
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
                height: screenData.getProportionateScreenHeight(30.00),
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
                  password = value;
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
                height: screenData.getProportionateScreenHeight(30.00),
              ),
              TextFormField(
                obscureText: true,
                onSaved: (value) => conformPassword = value,
                onChanged: (value) {
                  if (value.isNotEmpty && password == value && errors.contains(passwordMatchError)) {
                    setState(() {
                      errors.remove(passwordMatchError);
                    });
                  }
                  conformPassword = value;
                },
                validator: (value) {
                  if ((value.isEmpty || password != value) && !errors.contains(passwordMatchError)) {
                    setState(() {
                      errors.add(passwordMatchError);
                    });
                  }
                  return null;
                },
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: "Confirm Password",
                  hintText: "Re-Enter your password",
                  suffixIcon: CustomSuffixIcon(
                    iconUrl: "assets/icons/Lock.svg",
                  ),
                ),
              ),
              FormError(errors: errors),
              SizedBox(
                height: screenData.getProportionateScreenHeight(40.00),
              ),
              DefaultButton(
                text: "Continue",
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    Navigator.push(context, MaterialPageRoute(builder: (context){return CompleteProfileScreen();}));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
