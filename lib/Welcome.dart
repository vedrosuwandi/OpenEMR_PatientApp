import 'dart:async';
import 'package:patient_app/LoginScreen/Login.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
    time();
  }

  //Set the duration of the navigation
  time() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  //set the navigation route
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return Login();
    }));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.1),
            ),
            //logo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/ANTEMR_white.png'),
                  width: size.width * 0.8,
                ),
              ],
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.grey,
              strokeWidth: 2,
            ),
            // hospital image
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/hospital.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
