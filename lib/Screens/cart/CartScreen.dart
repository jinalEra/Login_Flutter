import 'package:flutter/material.dart';
import 'package:login/Screens/cart/cartBody.dart';
import 'package:login/Screens/cart/components/bottomNavigationBar.dart';
import 'package:login/Screens/cart/components/cartAppBar.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: CartAppBar(),
      body: CartBody(),
      bottomNavigationBar: CheckOurCard(),
      

    );
  }
}


