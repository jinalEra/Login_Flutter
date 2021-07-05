
import 'package:flutter/material.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({
    Key key, this.text, this.press,
  }) : super(key: key);

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: TextButton(
          onPressed: press,
          child: Text(text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor:  Colors.orange,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100)
          ),
        ),
      ),
    );
  }
}