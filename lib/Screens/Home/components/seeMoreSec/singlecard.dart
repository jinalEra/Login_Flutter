
import 'package:flutter/material.dart';

// ignore: camel_case_types
class specialOfferCard extends StatelessWidget {
  const specialOfferCard({
    Key key, this.category, this.numOfBrands, this.press, this.c1, this.c2,
  }) : super(key: key);

  final String category;
  final int numOfBrands;
  final GestureTapCallback press;
  final Color c1;
  final Color c2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 200,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [            
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      c1, c2,
                    ])
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: "$category\n",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )
                    ),
                    TextSpan(text: "$numOfBrands Brands",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ))
                  ])
                ),
              )
            ],
          ),
          ),

      ),
    );
  }
}

