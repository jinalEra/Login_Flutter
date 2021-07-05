import 'package:flutter/material.dart';

class Product {
  final String title, descriptions;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    @required this.images,
    @required this.colors,

    // this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.rating,
    @required this.descriptions,
  });
}

List<Product> demoProducts = [
// 1
  Product(
    images: [
      // "assets/image/seatingman.png",
      "assets/image/hosllhhaj.jpeg"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Fit Me Compact",
    price: 64.99,
    descriptions: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),

// 2
  Product(
    images: ["assets/image/holaione.jpeg"],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Lakme Compact",
    price: 60.99,
    descriptions: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),

// 3
  Product(
    images: ["assets/image/holagtwo.jpeg"],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "FIT me ",
    price: 50.00,
    descriptions: description,
    rating: 4.4,
    isFavourite: true,
    isPopular: true,
  ),

// 4
  Product(
    images: ["assets/image/hohjdthree.jpeg"],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Golden Partical ",
    price: 70.09,
    descriptions: description,
    rating: 4.9,
    isFavourite: true,
    isPopular: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
