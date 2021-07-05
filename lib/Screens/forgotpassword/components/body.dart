import 'package:flutter/material.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/Screens/signup/signup_form.dart';
import 'package:login/components/linkbtn.dart';
import 'package:login/components/loginpage_loginbtn.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/constant.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      //have an all widgets
      child: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // title
          Container(
            padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
            child: Text(
              "Forgot Password",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
          ),
          // gape
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          //description
          Text(
            "Please enter your email and we will send \nyou a link to return to your account",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blueGrey, fontSize: 12),
          ),
          ForgotForm()
          // username textfield
        ],
      )),
    );
  }
}

class ForgotForm extends StatefulWidget {
  @override
  _ForgotFormState createState() => _ForgotFormState();
}

class _ForgotFormState extends State<ForgotForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
            child: RoundedInputField(
              hintText: "Enter Your Email",
              icon: Icons.person,
              onChanged: (value) {},
            ),
          ),

          // gape
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          // send email btn
          Container(
            padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
            child: LoginBtn(
              text: "Continue",
              press: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
                // Navigator.push(context,
                // MaterialPageRoute(builder:
                // (context) {
                //   // return home page when create homepage.. change signupbtn
                //   return LoginScreen();
                // }
                // )
                // );
              },
              color: LoginBtnBack,
            ),
          ),
          //sign up link
          Container(
            padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
            child: LinkBtn(
              text: "Don't have an account? Sign Up",
              textColor: Colors.grey,
              press: () {
                Navigator.pushNamed(context, SignUpScreen.routeName);
                // Navigator.push(context,
                // MaterialPageRoute(builder:
                // (context) {
                //   return SignUpScreen();
                // }
                // )
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
