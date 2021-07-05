
import 'package:flutter/material.dart';
import 'package:login/components/NavigationBar.dart';
import 'package:login/Screens/profile/components/appBarTitle.dart';
import 'package:login/Screens/profile/components/profileBody.dart';
import 'package:login/enums.dart';

class ProfileScreen extends StatelessWidget {

  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarProfile(),
      body: ProfileBody(),
      bottomNavigationBar: NavigationBar(selectedMenu: MenuState.profile,),
    );
  }
}