
import 'package:flutter/material.dart';

// color dot for seprate

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color, this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(2),
      height: 25, width: 25, 
      decoration: BoxDecoration(
        // color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? Colors.black : Colors.transparent)
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
        ),
        ),
      
    );
  }
}
