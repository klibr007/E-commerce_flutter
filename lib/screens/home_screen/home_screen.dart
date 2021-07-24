import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/generic_widgets/generic.dart';
import 'package:project00/screens/home_screen/widgets/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home,),
    );
  }
}
