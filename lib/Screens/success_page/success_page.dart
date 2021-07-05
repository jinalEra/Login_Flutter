import 'package:flutter/material.dart';
import 'package:login/Screens/success_page/components/success_body.dart';

class SuccessLoginPage extends StatelessWidget {

  static String routeName = "/success_page";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SuccessBody(),
    );
  }
}