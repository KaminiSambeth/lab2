import 'package:exercise/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:exercise/splash_screen.dart';
void main() {
  runApp(SplashScreenDemoApp());
  
}
 
class SplashScreenDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stateless Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
     routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
   
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/second': (context) => LoginPage(),
  },
); // Error here for now

  }
}