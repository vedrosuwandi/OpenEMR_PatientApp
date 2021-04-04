import 'package:flutter/material.dart';
import 'package:patient_app/Welcome.dart';

void main() {
  runApp(Patient_App());
}

class Patient_App extends StatefulWidget {
  @override
  _Patient_AppState createState() => _Patient_AppState();
}

class _Patient_AppState extends State<Patient_App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NHS Patient',
      home: Welcome(),
    );
  }
}
