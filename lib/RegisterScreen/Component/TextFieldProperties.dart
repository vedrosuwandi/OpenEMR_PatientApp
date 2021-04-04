import 'package:flutter/material.dart';
import 'package:patient_app/RegisterScreen/Component/TextFieldContainer.dart';

class TextFieldProperties extends StatelessWidget {
  final String label;
  final IconData icon;
  final ValueChanged<String> onChanges;

  const TextFieldProperties({
    Key key,
    this.label,
    this.icon,
    this.onChanges,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primarycolor = Colors.blue[700];
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
          hintText: label,
          icon: Icon(
            icon,
            color: primarycolor,
          ),
          border: InputBorder.none,
        ),
        onChanged: onChanges,
      ),
    );
  }
}
