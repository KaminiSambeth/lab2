import 'package:flutter/material.dart';
import 'package:exercise/splash_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFB414B),
      ),
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
 
  bool _isChecked = false;
}

class _LoginPageState extends State<LoginPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   resizeToAvoidBottomPadding: false,
   
        body: Container(
      padding:
          EdgeInsets.only(top: 100.0, right: 20.0, left: 20.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
                  'assets/images/kRide.png',
                  scale: 1.1,
                ),
          
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Login',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          
                   TextField(
                    
                    decoration: InputDecoration(
                        labelText: 'Email', icon: Icon(Icons.email))),
                TextField(
                 
                  decoration: InputDecoration(
                      labelText: 'Password', icon: Icon(Icons.lock)),
                  
                ),
          SizedBox(
            height: 30.0,
          ),
         
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 18),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool value) {
                    _onChange(value);
                  },
                ),
                Text('Remember Me', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          buildButtonContainer(),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account?",
                      style: TextStyle(fontSize: 17)),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("SIGN UP",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 17,
                      )),
                ],
              ),
            ),
          )
        ],
      ),
      ));
  }

 

  Widget buildButtonContainer() {
    return Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23.0),
          gradient: LinearGradient(
              colors: [Color(0xFFFB415B), Color(0xFFEE5623)],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft)),
      child: Center(
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }

  void _onChange(bool value) {
    setState(() {
      _isChecked = value;
    });
  }
}
