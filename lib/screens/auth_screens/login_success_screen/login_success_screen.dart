import 'package:flutter/material.dart';
import 'package:project00/screens/auth_screens/login_success_screen/widgets/login_success.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: LoginSuccessBody(),
    );
  }
}
