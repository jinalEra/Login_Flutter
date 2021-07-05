import 'package:flutter/material.dart';
import 'package:login/Screens/home/components/homebody.dart';
import 'package:login/components/NavigationBar.dart';
import 'package:login/enums.dart';



class HomeScreen extends StatelessWidget {


  static String routeName = "/Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
      bottomNavigationBar: NavigationBar(selectedMenu: MenuState.home),
    );
  }
}