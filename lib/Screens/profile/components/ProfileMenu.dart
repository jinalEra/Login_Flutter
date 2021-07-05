import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key, 
    @required this.text, 
    @required this.icon, 
    @required this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: TextButton(
          onPressed: press,
          style: TextButton.styleFrom(
            primary: Colors.black, // for text color
            backgroundColor: Colors.grey[200], //background color
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              children: [
                Icon(icon, size: 22, color: Colors.grey[800]),
                SizedBox(
                  width: 23,
                ),
                Expanded(
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 13, color: Colors.grey[800]),
                  ),
                ),
                Icon(Icons.arrow_forward_ios,
                    size: 14, color: Colors.grey[800]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
