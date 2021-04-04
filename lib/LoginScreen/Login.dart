import 'package:flutter/material.dart';
import 'package:patient_app/LoginScreen/Component/Body.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color primarycolor = Colors.blue[700];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primarycolor,
      body: Body(),
    );
  }
}
