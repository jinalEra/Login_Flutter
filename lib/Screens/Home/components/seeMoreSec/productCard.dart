import 'package:flutter/material.dart';
import 'package:login/constant.dart';
import 'package:login/models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key, 
    this.width = 120, 
    this.aspectRation = 1.02, 
    this.product, 
    @required this.press,
  }) : super(key: key);


  final double width, aspectRation;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 200,
        child: GestureDetector(
          onTap: press,
          child: SizedBox(
            height: 120,
            width: width,
            child: 
              Column(
                children: [
                  AspectRatio(
                  aspectRatio: aspectRation,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: latestproductback.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset(product.images[0]),
                  ),
                ),
                SizedBox(height: 10,),
                Text(product.title,
                textAlign: TextAlign.left,
                 style: TextStyle(
                   fontSize: 11,
                  //  fontWeight: FontWeight.w600,
                   color: Colors.black,
                 ),
                 maxLines: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$${product.price}",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w600,
                      fontSize: 13
                    ),),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: product.isFavourite ?
                          Colors.grey[50] : Colors.red,
                          shape: BoxShape.circle
                        ),
                        child: Icon(
                          Icons.star_border_outlined, 
                          size: 18,
                          color: product.isFavourite ?
                          Colors.red : Colors.black,),
                      ),
                    )
                  ],
                )
              ],
            ),    
          ),
        ),
      ),
    );
  }
}
