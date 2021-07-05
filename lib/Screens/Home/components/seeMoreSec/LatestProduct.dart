
import 'package:flutter/material.dart';
import 'package:login/Screens/Details/detailScreen.dart';
import 'package:login/Screens/Home/components/seeMoreSec/heading.dart';
import 'package:login/Screens/Home/components/seeMoreSec/productCard.dart';
import 'package:login/models/product.dart';

class LatestProduct extends StatelessWidget {
  const LatestProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          SectionHead(
            head1: "Latest Product",
            head2: "See more",
            press: (){},
          ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length, 
                (index) => ProductCard(product: demoProducts[index],
                press: (){
                  Navigator.pushNamed(context, DetailScreen.routeName, arguments: ProductDetailsArguments(product: demoProducts[index]));
                },)
                ),
                SizedBox(width: 20)
              
            ],
          ),
        ),
      ],
    );
  }
}
