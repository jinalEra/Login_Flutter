import 'package:flutter/material.dart';
import 'package:login/Screens/signup/components/SignUpBody.dart';


class SignUpScreen extends StatelessWidget {

   static String routeName = "/signup";
  @override
  Widget build(BuildContext context) {

    return Scaffold( 
      body: SignUpBody(),     
    );

  }
}
