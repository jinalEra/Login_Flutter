import 'package:flutter/material.dart';

import 'package:login/Screens/Home/components/homeheader/IconBtnWithCounter.dart';
import 'package:login/Screens/Home/components/homeheader/SearchContainer.dart';
import 'package:login/Screens/cart/CartScreen.dart';
import 'package:login/Screens/profile/profileScreen.dart';


// search section
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      // rightside padding common take
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchContainer(),

          //bag container
          IconBtnWithCounter(
            icon: Icon(
              Icons.badge,
              color: Colors.grey[800],
              size: 20.0,
            ),
            press: (){
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),

          //notification container star
          IconBtnWithCounter(
            icon: Icon(
              Icons.star_border_purple500_outlined,
              color: Colors.grey[800],
              size: 20.0,
            ), 
            press: () => Navigator.pushNamed(context, ProfileScreen.routeName),
            numOfItem: 2,
            )


        ],
      ),
    );
  }
}
