
import 'package:flutter/material.dart';
import 'package:login/constant.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key key,
     @required this.icon, 
     this.numOfItem = 0, 
      @required  this.press,
  }) : super(key: key);


  final Icon icon;
  final int numOfItem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Stack(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: search_background.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: icon
          ),
          if(numOfItem != 0)
          Positioned(
            
            right: 0,
            child: Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                color: Time,
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white)
              ),
              child: Center(
                child: Text("$numOfItem",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9
                ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
