import 'package:flutter/material.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/components/loginpage_loginbtn.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/constant.dart';

class CompleteProfileScreenBody extends StatefulWidget {
  
  @override
  _CompleteProfileScreenBodyState createState() => _CompleteProfileScreenBodyState();
}

class _CompleteProfileScreenBodyState extends State<CompleteProfileScreenBody> {

  // for validation purpose


  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
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
                  "Complete Profile",
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
              // Container(
              //   margin: EdgeInsets.symmetric(vertical: 20),
              //   // padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              //   child: Image.asset(
              //     "assets/image/seatinggirl.png",
              //     height:MediaQuery.of(context).size.height * 0.3,
              //     ),
              // ),
              
            // username textfield
              RoundedInputField(
                hintText: "Firstname",
                icon: Icons.person,
                onChanged: (value) {},
              ),
            // username textfield
              RoundedInputField(
                hintText: "Lastname",
                icon: Icons.person,
                onChanged: (value) {},
              ),
              // username textfield
              RoundedInputField(
                hintText: "phone",
                icon: Icons.person,
                onChanged: (value) {},
              ),
              // username textfield
              RoundedInputField(
                hintText: "Address",
                icon: Icons.person,
                onChanged: (value) {},
              ),
              
          // gape 
              SizedBox(height:MediaQuery.of(context).size.height * 0.01),
            
              //sign up btn
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(0,0,0,0),
                child: LoginBtn(
                  text: "Continue",
                  press: () {

                    Navigator.pushNamed(context, LoginScreen.routeName);
                  //     Navigator.push(context, 
                  //       MaterialPageRoute(builder: (context) { return LoginScreen();}
                  //       )
                  //     );
                  },
                  color: LoginBtnBack,
                ),
              ),

              // login link
              // Container(
              //   padding: EdgeInsetsDirectional.fromSTEB(0,0,0,0),
              //   child: LinkBtn(
              //     text: "Already have an account? Login",
              //     textColor: Colors.grey,
              //     press: () {
              //       Navigator.pushNamed(context, LoginScreen.routeName);
              //     //   Navigator.push(context, 
              //     //   MaterialPageRoute(builder: 
              //     //   (context) {
              //     //     return LoginScreen();
              //     //   }
              //     //   )
              //     //   );
              //     },
              //   ),
              // ),

          ],
        ),
      ),
      ),
    );
  }
}
