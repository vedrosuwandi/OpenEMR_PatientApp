import 'package:flutter/material.dart';
import 'package:patient_app/RegisterScreen/Component/TextFieldContainer.dart';

class PasswordTextProperties extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconData visiblity;
  final ValueChanged<String> onChanges;

  const PasswordTextProperties({
    Key key,
    this.label,
    this.icon,
    this.onChanges,
    this.visiblity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primarycolor = Colors.blue[700];
    return TextFieldContainer(
      child: TextField(
        obscureText: true, // to hide the text
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: primarycolor,
          ),
          suffixIcon: Icon(
            visiblity,
            color: primarycolor,
          ),
          hintText: label,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
