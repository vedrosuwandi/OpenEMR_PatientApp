import 'package:flutter/material.dart';

class AppointmentCategory extends StatefulWidget {
  @override
  _AppointmentCategoryState createState() => _AppointmentCategoryState();
}

class _AppointmentCategoryState extends State<AppointmentCategory> {
  List<String> categories = [
    "OutPatient",
    "e-Consulting",
  ];
  String category;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "Select Category : ",
          style: TextStyle(fontSize: 17),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
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
          child: DropdownButton(
            hint: Text("Select Category"),
            dropdownColor: Colors.white,
            underline: SizedBox(),
            value: category,
            items: categories.map((valueItem) {
              return DropdownMenuItem<String>(
                value: valueItem,
                child: Text(valueItem),
              );
            }).toList(),
            onChanged: (String value) {
              setState(() {
                category = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
