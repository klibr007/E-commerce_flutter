import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/screens/profile_screen/widgets/profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: ProfileBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile,),
    );
  }
}
