

import 'package:flutter/material.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/components/LoginButton.dart';
import 'package:login/constant.dart';

class OtpBody extends StatefulWidget {

  @override
  _OtpBodyState createState() => _OtpBodyState();
}

class _OtpBodyState extends State<OtpBody> {
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
              child: Text("OTP Verification", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1),
              ),
            ),
             SizedBox(height:MediaQuery.of(context).size.height * 0.04),
            Text("We sent your code to +123 456 7890",
            style: TextStyle(
              color: Colors.black54,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
            ),),
            SizedBox(height:MediaQuery.of(context).size.height * 0.01),
            BuildTimer(),
            OtpForm(),
            SizedBox(height:MediaQuery.of(context).size.height * 0.03),
          ],
        ),
      ),
    );
  }
}

// for 4 otp box
class OtpForm extends StatefulWidget {
  
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {

  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState(){
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose(){
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }
  
  void nextField({String value, FocusNode focusNode}){
    if(value.length == 1){
      focusNode.requestFocus();
    }
  }


  @override
  Widget build(BuildContext context) {
    
    return Form(
      child: Container(
      margin: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OtpBoxs(
                  change: (value){
                    nextField(value: value, focusNode: pin2FocusNode);
                  },
                ),
                Spacer(),
                OtpBoxs(
                  focusnode: pin2FocusNode,
                  change: (value){
                    nextField(value: value, focusNode: pin3FocusNode);
                  },
                ),
                Spacer(),
                OtpBoxs(
                  focusnode: pin3FocusNode,
                  change: (value){
                    nextField(value: value, focusNode: pin4FocusNode);
                  },
                ),
                Spacer(),
                OtpBoxs(
                  focusnode: pin4FocusNode,
                  change: (value){
                    pin4FocusNode.unfocus();
                  },
                )
              ],
            ),
            SizedBox(height:MediaQuery.of(context).size.height * 0.09),
            LoginHomeBtn(
              text: "Continue",
              press: (){
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              color: LoginBackground,
            ),
            SizedBox(height:MediaQuery.of(context).size.height * 0.16),
            GestureDetector(
              onTap: (){
                //resent otp code
              },
              child: Text(
                "Resend OTP",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// for 1 otp box widget
class OtpBoxs extends StatelessWidget {

  final Function change;
  final FocusNode focusnode;
  

  const OtpBoxs({
    Key key,
    this.change,
    this.focusnode,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.0,
        child: TextFormField(
          focusNode: focusnode,
          
          obscureText: true,
          keyboardType: TextInputType.number,
          style: TextStyle(fontSize: 20, color: Colors.black),
          textAlign: TextAlign.center,
          decoration: otpInputDecoration,
          onChanged: change,
        ),
       
    );
    
  }
}


//for timer
class BuildTimer extends StatelessWidget {
  const BuildTimer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in ",
         style: TextStyle(
            color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
          ),),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
           duration: Duration(seconds: 30), 
           builder: (context, value, child) => Text("00:${value.toInt()}", 
            style: TextStyle(
              color: Time,
              fontWeight: FontWeight.w600,
            ),
            ),
            onEnd: (){},
           ),
          
      ],
    );
  }
}