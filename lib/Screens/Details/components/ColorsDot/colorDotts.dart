import 'package:flutter/material.dart';
import 'package:login/Screens/Details/components/ColorsDot/colorDot.dart';
import 'package:login/components/roundedbtn.dart';
import 'package:login/constant.dart';
import 'package:login/models/product.dart';


// fecth all colors from  list
class ColorsDottts extends StatelessWidget {
  const ColorsDottts({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 1;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      padding: EdgeInsets.all(10),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
      color: whiteback,
        borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          children: [
            ...List.generate(product.colors.length, (index) => ColorDot(color: product.colors[index], isSelected: selectedColor == index,)),
            Spacer(),
            RoundedBtn(
              icon: Icon(Icons.remove, size: 20,),
              press: (){},
            ),
            SizedBox(width: 20),
            RoundedBtn(
              icon: Icon(Icons.add, size: 20,),
              press: (){},
            )
          ],
        ),
      );
  }
}
