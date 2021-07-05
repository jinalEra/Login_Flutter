import 'package:flutter/material.dart';
import 'package:login/Screens/Home/components/OptionFiveSec/category.dart';
import 'package:login/Screens/Home/components/discount/discount_banner.dart';
import 'package:login/Screens/Home/components/homeheader/body.dart';
import 'package:login/Screens/Home/components/seeMoreSec/LatestProduct.dart';
import 'package:login/Screens/Home/components/seeMoreSec/popularproduct.dart';


class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          
          children: [
//search bar section
            SizedBox(height: 20),
            HomeHeader(),

// Discount Banner - blue background
            SizedBox(height: 20),
            DiscountBanner(),

//option banner - 5 icons
            SizedBox(height: 15),
            Categories(),

//See more title section 1 - Special for you
//offerBanner - cosmetic and fashion
            SizedBox(height: 10),
            PopularProduct(),

// See more title section 2 - Latest Product
//bottom latest product - 4 product
            SizedBox(height: 5),
            LatestProduct(),
          ],
        ),
      ),
    );
  }
}

