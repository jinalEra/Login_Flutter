import 'package:flutter/material.dart';
import 'package:login/Screens/forgotpassword/forgotpassword.dart';
import 'package:login/Screens/signup/signup_form.dart';
import 'package:login/components/linkbtn.dart';
import 'package:login/components/loginpage_loginbtn.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/components/rounded_password_field.dart';
import 'package:login/constant.dart';

class LoginBody extends StatefulWidget {
  LoginBody({
    Key key,
  }) : super(key: key);

  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {

  bool changedbtn = false;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      //have an all widgets
      child: SingleChildScrollView(
          child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // title
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Text(
                "Log In ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
            ),
            // gape
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            // Image
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              // padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Image.asset(
                "assets/image/lappy_seating_girl.png",
                height: MediaQuery.of(context).size.height * 0.2,
                fit: BoxFit.fill,
              ),
            ),

            // username textfield
            RoundedInputField(
              validator: (value) {
                if (value.isEmpty) {
                  return "Please Enter Username";
                }
                return null;
              },
              hintText: "Username",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            // password textfield
            RoundedPasswordField(
              validator: (value) {
                if (value.isEmpty) {
                  return "Please Enter Password";
                } else if (value.length < 6) {
                  return "length should be 6 digit";
                }
                return null;
              },
              hintText: "Password",
              icon: Icons.lock,
              onChanged: (value) {},
              
            ),

            // gape
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            //login button
            Material(
              child: InkWell(
                onTap: () async {
                  setState(() => changedbtn = true);
                  await Future.delayed(Duration(seconds: 1));
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: LoginBtn(
                    text: changedbtn ? "Success Login" : "LOGIN"  ,
                    color: changedbtn ? Colors.pink : LoginBtnBack,
                    textColor: Colors.white,
                  ),
                ),
              ),
            ),

            //sign up link
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              child: LinkBtn(
                text: "Don't have an account? Sign Up",
                textColor: Colors.grey,
                press: () {
                  Navigator.pushNamed(context, SignUpScreen.routeName);
                },
              ),
            ),

            //forgot password up link
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
              child: LinkBtn(
                text: "Forgot Password ?",
                textColor: LoginBackground,
                press: () {
                  Navigator.pushNamed(context, ForgotPassword.routeName);
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
