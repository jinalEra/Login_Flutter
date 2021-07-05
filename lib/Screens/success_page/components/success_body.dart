import 'package:flutter/material.dart';
import 'package:login/Screens/home/homeScreen.dart';
import 'package:login/components/LoginButton.dart';
import 'package:login/constant.dart';


class SuccessBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            
              Text("Login Successful",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.bold
                ),
                ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.06),

              Container(
                height:MediaQuery.of(context).size.height * 0.2,
                width:MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle
                  ),

                child: Icon(
                  Icons.check,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              SizedBox(height:MediaQuery.of(context).size.height * 0.03),
              LoginHomeBtn(
              text: "Home",
              press: (){
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              color: success_home,
            ),
            ],
          ),
    );
  }
}