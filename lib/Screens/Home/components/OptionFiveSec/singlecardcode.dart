import 'package:flutter/material.dart';
import 'package:login/constant.dart';


// single card code
class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String text;
  final Icon icon;
  final GestureTapCallback press;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 50,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: optionBack,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: icon,
                
              ),
            ),
            SizedBox(height: 8),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 11
              ),
              )
          ],
        ),
      

      ),
    );
  }
}
