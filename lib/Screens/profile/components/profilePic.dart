

import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          fit: StackFit.expand,
          children: [ 
            CircleAvatar(
              backgroundImage: AssetImage("assets/image/mat-napo-ROQwTv9NMPE-unsplash.jpg"),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 43,
                width: 43,
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200], 
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.white)
                      ),
                    child: Icon(Icons.camera_alt_rounded, size: 20, color: Colors.blueGrey),
                  ),
                ),
              ),
            ),
              
          ],
        ),
      ),
    );
  }
}