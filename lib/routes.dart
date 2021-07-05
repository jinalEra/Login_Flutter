import 'package:flutter/widgets.dart';

import 'package:login/Screens/Details/detailScreen.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/Screens/OtpVerify/otp_Screen.dart';

import 'package:login/Screens/WelcomeScreen/welcome_home_page.dart';
import 'package:login/Screens/cart/CartScreen.dart';
import 'package:login/Screens/completeprofile/completeprofile.dart';

import 'package:login/Screens/forgotpassword/forgotpassword.dart';
import 'package:login/Screens/home/homeScreen.dart';
import 'package:login/Screens/profile/profileScreen.dart';

import 'package:login/Screens/signup/signup_form.dart';
import 'package:login/Screens/success_page/success_page.dart';

final Map<String, WidgetBuilder> routes = {
  
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  SuccessLoginPage.routeName: (context) => SuccessLoginPage(),
  LoginScreen.routeName: (context) => LoginScreen(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),

};