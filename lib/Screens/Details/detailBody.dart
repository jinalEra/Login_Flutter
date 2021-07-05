import 'package:flutter/material.dart';
import 'package:login/Screens/Details/components/productDescription.dart';

import 'package:login/models/product.dart';

class DetailBody extends StatelessWidget {
  final Product product;

  const DetailBody({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProductImages(product: product);
  }
}

class ProductImages extends StatelessWidget {
  const ProductImages({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70, vertical: 25),
              child: SizedBox(
                width: 230,
                height: 150,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(product.images[0]),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    product.images.length, (index) => BuildSmallPreview(index))
              ],
            ),

            // detail container

            ProductDescription(product: product)
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container BuildSmallPreview(int index) {
    return Container(
      padding: EdgeInsets.all(4),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(),
          color: Colors.white,
          border: Border.all(color: Colors.black)),
      child: Image.asset(product.images[index]),
    );
  }
}
