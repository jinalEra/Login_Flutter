import 'package:flutter/material.dart';
import 'package:login/Screens/Details/components/ArrowBack.dart';
import 'package:login/models/cart.dart';

class CartAppBar extends PreferredSize {
  @override
  get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 25),
      child: Padding(
        padding: const EdgeInsets.all(15),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ArrowBack(
              press: () {
                Navigator.pop(context);
              },
              icon: Icons.arrow_back_ios,
            ),
            Container(
              margin: EdgeInsets.only(top: 6),
              child: Column(
                children: [ Text(
                    "Your Cart",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
                
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle
              ),
              child: Center(
                child: Text(
                      "${demoCarts.length}",
                      style: TextStyle(fontSize: 11, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
              )
            )
          ],
        ),
      ),
    );
  }
}
