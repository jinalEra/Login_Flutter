import 'package:flutter/material.dart';
import 'package:login/Screens/completeprofile/compeleBody.dart';

class CompleteProfileScreen extends StatelessWidget {

   static String routeName = "/completeprofile";
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: CompleteProfileScreenBody(),     
    );
  }
}
