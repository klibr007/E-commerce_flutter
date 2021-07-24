import 'package:flutter/material.dart';
import 'package:project00/config/config.dart';
import 'package:project00/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project00',
      theme: theme(),
      home: WelcomeScreen(),
      //initialRoute: WelcomeScreen.routeName,
      //routes: routes,
    );
  }
}


