import 'package:flutter/material.dart';
import 'package:patient_app/RegisterScreen/Component/TextFieldContainer.dart';

class PasswordTextProperties extends StatefulWidget {
  final String label;
  final IconData icon;
  final ValueChanged<String> onChanges;
  final TextEditingController controller;
  final Function validate;

  PasswordTextProperties({
    Key key,
    this.label,
    this.icon,
    this.onChanges,
    this.controller,
    this.validate,
  }) : super(key: key);

  @override
  _PasswordTextPropertiesState createState() => _PasswordTextPropertiesState();
}

class _PasswordTextPropertiesState extends State<PasswordTextProperties> {
  bool isVisible = true;
  // set the password to visible
  void toogle() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color primarycolor = Colors.blue[700];
    return TextFieldContainer(
      child: TextFormField(
        validator: widget.validate,
        controller: widget.controller,
        obscureText: isVisible, // to hide the text
        decoration: InputDecoration(
          icon: Icon(
            widget.icon,
            color: primarycolor,
          ),
          suffixIcon: InkWell(
            onTap: () {
              toogle();
            },
            child: Icon(
              isVisible ? Icons.visibility : Icons.visibility_off_rounded,
              color: primarycolor,
            ),
          ),
          hintText: widget.label,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
