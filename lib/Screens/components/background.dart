import 'package:flutter/material.dart';
import 'package:login/constant.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
   return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: -230,
              left: -110,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    color: HomeBackgroundOutSidecircle, shape: BoxShape.circle),
              )),
          Positioned(
              top: -240,
              left: -140,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    color: HomeBackgroundsmallcircle, shape: BoxShape.circle),
              )),
              
          Positioned(
              top: -85,
              right: 50,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                    color: HomeBackgroundsmallcircle, shape: BoxShape.circle),
              )),
          Positioned(
              bottom: -260,
              right: -100,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: HomeBackgroundOutSidecircle, shape: BoxShape.circle),
              )),
          child,
        ],
      ),
    );
  }
}
