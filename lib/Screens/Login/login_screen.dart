import 'package:flutter/material.dart';
import 'package:login/Screens/Login/components/body.dart';


class LoginScreen extends StatelessWidget {

  static String routeName = "/Login";
  
  @override
  Widget build(BuildContext context) {
    // main scaffold
    return Scaffold(
      // body main container
      body: LoginBody(),
    );
  }
}
