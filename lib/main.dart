import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/Screens/WelcomeScreen/welcome_home_page.dart';
import 'package:login/constant.dart';
import 'package:login/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: ThemeColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.lailaTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      // home: WelcomeScreen(),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
