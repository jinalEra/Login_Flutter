import 'package:flutter/material.dart';
import 'package:login/Screens/Details/components/AppbarTitle.dart';
import 'package:login/Screens/Details/detailBody.dart';
import 'package:login/models/product.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/Details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: Appbartitle(rating: arguments.product.rating),
      body: DetailBody(product: arguments.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
