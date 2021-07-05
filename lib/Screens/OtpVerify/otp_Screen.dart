import 'package:flutter/material.dart';
import 'package:login/Screens/OtpVerify/body.dart';


class OtpScreen extends StatelessWidget {

  static String routeName = "/OtpVerify";
  
  @override
  Widget build(BuildContext context) {
    // main scaffold
    return Scaffold(
      // body main container
      
      body: OtpBody(),
    );
  }
}
