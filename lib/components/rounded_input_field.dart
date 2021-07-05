import 'package:flutter/material.dart';
import 'package:login/components/text_field_container.dart';
import 'package:login/constant.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Function validator;
  
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged,
    this.validator,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextFormField(
          validator: validator,
            onChanged: onChanged,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black45,
              ),
            decoration: InputDecoration(
              icon: Icon(icon,
                color: TextFieldIconColor,
                size: 20,
              ),
              hintText: hintText,
              border: InputBorder.none,
          ),
        ),
      );
  }
}



