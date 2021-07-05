import 'package:flutter/material.dart';
import 'package:login/Screens/Home/components/seeMoreSec/heading.dart';
import 'package:login/Screens/Home/components/seeMoreSec/singlecard.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHead(
          head1: "Special for you",
          head2: "See more",
          press: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              specialOfferCard(
                category: "Cosmetic",
                numOfBrands: 10,
                c1: Color(0xFFff0961).withOpacity(0.5),
                c2: Color(0xFF310057).withOpacity(0.7),
                press: () {},
              ),
              specialOfferCard(
                category: "Fashion",
                numOfBrands: 24,
                press: () {},
                c1: Color(0xFF002b57).withOpacity(0.8),
                c2: Color(0xFF4d98e5).withOpacity(0.7),
              ),
              SizedBox(width: 20)
            ],
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

