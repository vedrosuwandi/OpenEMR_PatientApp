import 'package:flutter/material.dart';
import 'package:patient_app/RegisterScreen/Component/TextFieldContainer.dart';

class TextFieldProperties extends StatefulWidget {
  final String label;
  final IconData icon;
  final ValueChanged<String> onChanges;
  final TextEditingController controller;
  final Function validate;

  const TextFieldProperties({
    Key key,
    this.label,
    this.icon,
    this.onChanges,
    this.controller,
    this.validate,
  }) : super(key: key);

  @override
  _TextFieldPropertiesState createState() => _TextFieldPropertiesState();
}

class _TextFieldPropertiesState extends State<TextFieldProperties> {
  @override
  Widget build(BuildContext context) {
    Color primarycolor = Colors.blue[700];
    return TextFieldContainer(
      child: TextFormField(
        validator: widget.validate,
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.label,
          icon: Icon(
            widget.icon,
            color: primarycolor,
          ),
          border: InputBorder.none,
        ),
        onChanged: widget.onChanges,
      ),
    );
  }
}
