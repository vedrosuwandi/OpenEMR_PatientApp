import 'package:flutter/material.dart';

class GenderDropdown extends StatefulWidget {
  @override
  _GenderDropdownState createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  String selectgender;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List gender = <String>["Male", "Female"];

    return Container(
      padding:
          EdgeInsets.only(left: size.width * 0.02, right: size.width * 0.02),
      width: size.width * 0.95,
      height: size.height * 0.05,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            blurRadius: 7,
            spreadRadius: 5,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      // Dropdown Button
      child: DropdownButton(
        hint: Text("Gender"),
        dropdownColor: Colors.white,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 20,
        isExpanded: true,
        underline: SizedBox(),
        value: selectgender,
        items: gender.map((valueItem) {
          return DropdownMenuItem<String>(
            value: valueItem,
            child: Text(valueItem),
          );
        }).toList(),
        // set the state when the value is stated
        onChanged: (String newValue) {
          setState(() {
            selectgender = newValue;
          });
        },
      ),
    );
  }
}
