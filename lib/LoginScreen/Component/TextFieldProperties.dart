import 'package:flutter/material.dart';
import 'package:patient_app/LoginScreen/Component/TextFieldContainer.dart';

class TextFieldProperties extends StatelessWidget {
  final String label;
  final ValueChanged<String> onChanges;
  final IconData icon;

  const TextFieldProperties({
    Key key,
    this.label,
    this.onChanges,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primarycolor = Colors.blue[700];
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanges,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: primarycolor,
          ),
          //takes the hintText from the label variable
          hintText: label,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
