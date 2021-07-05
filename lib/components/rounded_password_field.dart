import 'package:flutter/material.dart';


import 'package:login/constant.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final Function validator;

  const RoundedPasswordField({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged, 
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
            onChanged: onChanged,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
              ),
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(icon,
                color: TextFieldIconColor,
                size: 20,
              ),
              hintText: hintText,
              suffixIcon: Icon(
                Icons.visibility,
                color: TextFieldIconColor,
                size: 20,
              ),
              border: InputBorder.none,
          ),
      );
  }
}