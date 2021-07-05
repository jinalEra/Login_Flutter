import 'package:flutter/material.dart';


class LinkBtn extends StatelessWidget {
  final String text;
  final Function press;
  final Color  textColor;

  const LinkBtn({
    Key key,
    this.text,
    this.press,
    this.textColor, //textcolor

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0.01),
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(5),
          child: TextButton(
            onPressed: press, 
            child: Text(text, 
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal),
            ), 
            style: TextButton.styleFrom(
              primary: textColor, // for text color
              // backgroundColor: color, //background color
              // padding: EdgeInsets.symmetric(vertical: 14, horizontal: 30)
    
            ),
        ),
      ),
    );
  }
}
