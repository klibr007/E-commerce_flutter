import 'package:flutter/material.dart';
import 'package:project00/screens/auth_screens/signup_screen/widgets/signup_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SignupBody(),
    );
  }
}
