import 'package:flutter/material.dart';
import 'package:project00/screens/auth_screens/forgot_password_screen/widgets/forgot_password.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: ForgotPasswordBody(),
    );
  }
}
