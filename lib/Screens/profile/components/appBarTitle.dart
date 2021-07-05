import 'package:flutter/material.dart';
import 'package:login/Screens/Details/components/ArrowBack.dart';

class AppBarProfile extends PreferredSize {
  @override
  get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowBack(
                press: () {
                  Navigator.pop(context);
                },
                icon: Icons.arrow_back_ios,
              ),
              SizedBox(
                width: 100,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                child: Row(
                  children: [
                    Text(
                      "Profile",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
