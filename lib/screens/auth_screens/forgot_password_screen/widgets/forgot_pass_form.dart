import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/generic_widgets/generic.dart';

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key key}) : super(key: key);

  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
   String email;

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);
    return Form(
      key: _formKey,
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
            height: screenData.getProportionateScreenHeight(30),
          ),
          FormError(errors: errors),
          SizedBox(
            height: screenData.size.height * 0.1,
          ),
          DefaultButton(
            text: "Continue",
            onPressed: () {
              if(_formKey.currentState.validate()){
                _formKey.currentState.save();
              }
            },
          ),
          SizedBox(
            height: screenData.size.height * 0.1,
          ),
          NoAccountText(),
        ],
      ),
    );
  }
}
