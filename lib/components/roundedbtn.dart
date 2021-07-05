
import 'package:flutter/material.dart';

class RoundedBtn extends StatelessWidget {
  const RoundedBtn({
    Key key, this.icon, this.press,
  }) : super(key: key);

  final Icon icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          shape: BoxShape.circle
        ),
        child: icon,
      ),
    );
  }
}
