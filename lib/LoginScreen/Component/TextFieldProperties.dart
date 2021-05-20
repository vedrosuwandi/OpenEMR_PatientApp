import 'package:flutter/material.dart';
import 'package:patient_app/LoginScreen/Component/TextFieldContainer.dart';

class TextFieldProperties extends StatefulWidget {
  final String label;
  final ValueChanged<String> onChanges;
  final IconData icon;
  final TextEditingController controller;

  const TextFieldProperties({
    Key key,
    this.label,
    this.onChanges,
    this.icon,
    this.controller,
  }) : super(key: key);

  @override
  _TextFieldPropertiesState createState() => _TextFieldPropertiesState();
}

class _TextFieldPropertiesState extends State<TextFieldProperties> {
  @override
  Widget build(BuildContext context) {
    Color primarycolor = Colors.blue[700];
    return TextFieldContainer(
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanges,
        decoration: InputDecoration(
          icon: Icon(
            widget.icon,
            color: primarycolor,
          ),
          //takes the hintText from the label variable
          hintText: widget.label,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
