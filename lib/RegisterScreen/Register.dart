import 'package:flutter/material.dart';
import 'package:patient_app/RegisterScreen/Component/Body.dart';

class Register extends StatelessWidget {
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
