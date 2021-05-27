import 'package:flutter/material.dart';
import 'package:patient_app/RegisterScreen/Component/AddressFieldContainer.dart';

class AddressFieldProperties extends StatefulWidget {
  final String label;
  final ValueChanged<String> onChanges;
  final TextEditingController controller;
  final Function validate;

  const AddressFieldProperties({
    Key key,
    this.label,
    this.onChanges,
    this.controller,
    this.validate,
  }) : super(key: key);

  @override
  _AddressFieldPropertiesState createState() => _AddressFieldPropertiesState();
}

class _AddressFieldPropertiesState extends State<AddressFieldProperties> {
  @override
  Widget build(BuildContext context) {
    Color primarycolor = Colors.blue[700];
    return AddressFieldContainer(
      child: TextFormField(
        validator: widget.validate,
        controller: widget.controller,
        maxLength: 100,
        decoration: InputDecoration(
          hintText: widget.label,
          icon: Icon(
            Icons.house,
            color: primarycolor,
          ),
          border: InputBorder.none,
        ),
        onChanged: widget.onChanges,
      ),
    );
  }
}
