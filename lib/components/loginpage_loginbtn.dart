import 'package:flutter/material.dart';


class LoginBtn extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const LoginBtn({
    Key key,
    this.text,
    this.press,
    this.color, //background
    this.textColor = Colors.white, //textcolor

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
   
    return Container(
      margin: EdgeInsets.symmetric(vertical: 9),
      width: MediaQuery.of(context).size.width * 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
          child: TextButton(
            onPressed: press, 
            child: Text(text), 
            style: TextButton.styleFrom(
              primary: textColor, // for text color
              backgroundColor: color, //background color
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30)
    
            ),
        ),
      ),
    );
  }
}
