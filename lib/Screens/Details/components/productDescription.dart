import 'package:flutter/material.dart';
import 'package:login/Screens/Details/components/ColorsDot/colorDotts.dart';
import 'package:login/Screens/components/addtocartbtn.dart';
import 'package:login/constant.dart';
import 'package:login/models/product.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 25),
        height: 300,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child: Text(product.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400))),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 30),
              child: Text(
                product.descriptions,
                maxLines: 3,
                style: TextStyle(
                    color: descriptioncolor,
                    fontSize: 11,
                    fontWeight: FontWeight.w600),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(left: 25, right: 30, top: 10),
                child: Row(
                  children: [
                    Text(
                      "See More Details",
                      style: TextStyle(
                          color: seemore,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: seemore,
                    )
                  ],
                ),
              ),
            ),
//second container for color selection
            ColorsDottts(product: product),
            AddToCartBtn(text: "Add to Cart", press: (){},)
          ],
        ),
        decoration: BoxDecoration(
            color: detailback,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(3, 3),
                  blurRadius: 5,
                  spreadRadius: 2)
            ]),
      ),
    );
  }
}

