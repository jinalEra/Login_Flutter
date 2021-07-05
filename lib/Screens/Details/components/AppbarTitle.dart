import 'package:flutter/material.dart';
import 'package:login/Screens/Details/components/ArrowBack.dart';
import 'package:login/constant.dart';

class Appbartitle extends PreferredSize {
  final double rating;

  const Appbartitle({
    this.rating,
  });

  @override
  get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // margin: EdgeInsets.only(top: 5),
        // color: Colors.grey,

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
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
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[50]),
                child: Row(
                  children: [
                    Text(
                      rating.toString(),
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic),
                    ),
                    Icon(
                      Icons.star,
                      color: ratingicon,
                      size: 13,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
