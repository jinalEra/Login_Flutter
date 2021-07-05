
import 'package:flutter/material.dart';

class ArrowBack extends StatelessWidget {

  final GestureTapCallback press;
  final IconData icon;


  const ArrowBack({
    Key key, this.press, this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.height * 0.06,
      color: Colors.transparent,
        child: TextButton(
          onPressed: press,
          child: Icon(
            icon,
            size: 17,
            color: Colors.black,
            ),
        ),
      );
  }
}
