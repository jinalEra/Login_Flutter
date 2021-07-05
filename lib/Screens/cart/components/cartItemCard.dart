
import 'package:flutter/material.dart';
import 'package:login/models/cart.dart';

class CardItemCart extends StatelessWidget {
  const CardItemCart({
    Key key, 
    @required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.symmetric( vertical: 8),
      child: Row(
        children: [
          //only image
          SizedBox(
            width: 80,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset(cart.product.images[0]),
              ),
            ),
          ),
          
          // space btw product image and info
          SizedBox(width: 10),

          //for product info
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(demoCarts[0].product.title,
              style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600),),
              SizedBox(height:10,),
              Text.rich(
                TextSpan(
                  text: "\$${cart.product.price}", style: TextStyle(color: Colors.orange[400], fontSize: 12),
                  children: [
                    TextSpan(text: " x ${cart.numOfItems}")
                  ]
                  )
              )
            ],
          ),
          
        ],
      ),
    );
  }
}
