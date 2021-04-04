import 'package:flutter/material.dart';
import 'package:patient_app/RegisterScreen/Component/AddressFieldContainer.dart';

class AddressFieldProperties extends StatelessWidget {
  final String label;
  final ValueChanged<String> onChanges;

  const AddressFieldProperties({
    Key key,
    this.label,
    this.onChanges,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primarycolor = Colors.blue[700];
    return AddressFieldContainer(
      child: TextField(
        maxLength: 100,
        decoration: InputDecoration(
          hintText: label,
          icon: Icon(
            Icons.house,
            color: primarycolor,
          ),
          border: InputBorder.none,
        ),
        onChanged: onChanges,
      ),
    );
  }
}
