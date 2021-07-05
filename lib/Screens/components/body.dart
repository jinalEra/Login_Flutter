import 'package:flutter/material.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/Screens/OtpVerify/otp_Screen.dart';
import 'package:login/Screens/components/background.dart';
import 'package:login/Screens/signup/signup_form.dart';
import 'package:login/components/Loginbutton.dart';
import 'package:login/constant.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  //  Size size = MediaQuery.of(context).size;
     // this size provide us total height and width of our screen
    return Background(
      
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
              child: Text(
                "WELCOME TO E-COMMERCE ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
                  ),
                  ),
            ),
            
            SizedBox(height:MediaQuery.of(context).size.height * 0.03),
            Image.asset(
              "assets/image/secondscreen_home.png",
              height:MediaQuery.of(context).size.height * 0.4
            ),
            SizedBox(height:MediaQuery.of(context).size.height * 0.02),
            //   LoginHomeBtn(
            //   text: "SHOP",
            //   press: () {
            //     Navigator.pushNamed(context, HomeScreen.routeName);
            //   },
            //   color: LoginBackground,
            // ),
//login btn
            LoginHomeBtn(
              text: "LOGIN",
              press: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              color: LoginBackground,
            ),
// sign up btn
            LoginHomeBtn(
              text: "SIGN UP",
              press: () {
                 Navigator.pushNamed(context, SignUpScreen.routeName);
              },
              color: SignUpBackground,
            ),
            LoginHomeBtn(
              text: "OTP",
              press: () {
                Navigator.pushNamed(context, OtpScreen.routeName);
              },
              color: LoginBackground,
            ),
            SizedBox(height:MediaQuery.of(context).size.height * 0.01),
            
            ],
        ),
      ),
     );
  }
}



 