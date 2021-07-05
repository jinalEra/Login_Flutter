
import 'package:flutter/material.dart';
import 'package:login/constant.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      // height: 90,
      decoration: BoxDecoration(
        color: discountBack,
        borderRadius: BorderRadius.circular(13)
      ),
      child: Text.rich(
        TextSpan(
          text: "A Summer Surprise\n",
          style: TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.normal
            ),
          children: [
            TextSpan(
              text: "Cashback 20%",
               style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w700
               )
            )
          ]
        ),
      ),
    );
  }
}
