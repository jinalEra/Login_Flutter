import 'package:flutter/material.dart';


//see more section
class SectionHead extends StatelessWidget {
  const SectionHead({
    Key key,
     this.head1, 
     this.head2,
     this.press,
  }) : super(key: key);

  final String head1, head2;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text( head1,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.blueGrey
          ),),
          GestureDetector(
            onTap: press,
            child: Text(
            head2,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.blueGrey
            ),),
          ),
        ], 
          ),
    );
  }
}

