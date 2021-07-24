import 'package:flutter/material.dart';
import 'package:project00/generic_widgets/generic.dart';
import 'package:project00/config/config.dart';
import 'package:project00/screens/auth_screens/auth_screens.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String firstName;
  String lastName;
  String phoneNumber;
  String address;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenData = MediaQuery.of(context);
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            onSaved: (newValue) => firstName = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: firstNameNullError);
              }
              firstName = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                addError(error: firstNameNullError);

              }
              return null;
            },
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: "First Name",
              hintText: "Enter your first name",
              suffixIcon: CustomSuffixIcon(
                iconUrl: "assets/icons/User.svg",
              ),
            ),
          ),
          SizedBox(
            height: screenData.getProportionateScreenHeight(30),
          ),
          TextFormField(
            onSaved: (newValue) => lastName = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: firstNameNullError);
              }
              lastName = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                addError(error: firstNameNullError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: "Last Name",
              hintText: "Enter your last name",
              suffixIcon: CustomSuffixIcon(
                iconUrl: "assets/icons/User.svg",
              ),
            ),
          ),
          SizedBox(
            height: screenData.getProportionateScreenHeight(30),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            onSaved: (newValue) => phoneNumber = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: phoneNumberNullError);
              }
              phoneNumber = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                addError(error: phoneNumberNullError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: "Phone Number",
              hintText: "Enter your phone number",
              suffixIcon: CustomSuffixIcon(
                iconUrl: "assets/icons/Phone.svg",
              ),
            ),
          ),
          SizedBox(
            height: screenData.getProportionateScreenHeight(30),
          ),
          TextFormField(
            keyboardType: TextInputType.streetAddress,
            onSaved: (newValue) => address = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: addressNullError);
              }
              address = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                addError(error: addressNullError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: "Address",
              hintText: "Enter your address",
              suffixIcon: CustomSuffixIcon(
                iconUrl: "assets/icons/Location point.svg",
              ),
            ),
          ),
          FormError(errors: errors),
          SizedBox(
            height: screenData.getProportionateScreenHeight(30),
          ),
          DefaultButton(
            text: "Continue",
            onPressed: () {
              if(_formKey.currentState.validate()){
                _formKey.currentState.save();
                Navigator.push(context, MaterialPageRoute(builder: (context){return OTPScreen();}));
              }
            },
          )
        ],
      ),
    );
  }
}
