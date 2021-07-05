import 'package:flutter/material.dart';
import 'package:login/Screens/components/body.dart';


class WelcomeScreen extends StatelessWidget {
  static String routeName = "/WelcomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body()
      );
  }
}