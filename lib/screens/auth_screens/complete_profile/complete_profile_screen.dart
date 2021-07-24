import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/generic_widgets/generic.dart';
import 'widgets/complete_profile.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: CompleteProfileBody(),
    );
  }
}
