import 'package:flutter/material.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/Screens/completeprofile/completeprofile.dart';
import 'package:login/components/linkbtn.dart';
import 'package:login/components/loginpage_loginbtn.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/components/rounded_password_field.dart';
import 'package:login/constant.dart';

class SignUpBody extends StatefulWidget {
  
  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {

  // for validation purpose


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        width: double.infinity,
        height:MediaQuery.of(context).size.height,
        color: KBackground,
        child: SingleChildScrollView(
         // for validation of this form 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // title
              Container(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2
                    ),
                  ),
              ),
              //gape
              SizedBox(height:MediaQuery.of(context).size.height * 0.02),

              // Image
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                // padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Image.asset(
                  "assets/image/seatinggirl.png",
                  height:MediaQuery.of(context).size.height * 0.3,
                  ),
              ),
              
            // username textfield
              RoundedInputField(
                hintText: "Username",
                icon: Icons.person,
                onChanged: (value) {},
              ),

            // password textfield
              RoundedPasswordField(
                hintText: "Password",
                icon: Icons.lock,
                onChanged: (value) {},
              ),

              //Re-Type password textfield
              RoundedPasswordField(
                hintText: "Confirm Password",
                icon: Icons.lock,
                onChanged: (value) {},
              ),

          // gape 
              SizedBox(height:MediaQuery.of(context).size.height * 0.01),
            
              //sign up btn
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(0,0,0,0),
                child: LoginBtn(
                  text: "Sign Up",
                  press: () {
                    Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                  },
                  color: LoginBtnBack,
                ),
              ),

              // login link
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(0,0,0,0),
                child: LinkBtn(
                  text: "Already have an account? Login",
                  textColor: Colors.grey,
                  press: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                ),
              ),

          ],
        ),
      ),
      ),
    );
  }
}
