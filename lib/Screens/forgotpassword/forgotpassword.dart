import 'package:flutter/material.dart';
import 'package:login/Screens/forgotpassword/components/body.dart';

class ForgotPassword extends StatelessWidget {

   static String routeName = "/forgotpassword";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ForgotPasswordBody(),
    );
  }
}