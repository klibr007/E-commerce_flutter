import 'package:flutter/material.dart';
import 'package:project00/screens/auth_screens/OTP/widgets/otp.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: OTPVerfificationBody(),
    );
  }
}
