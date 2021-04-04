import 'package:flutter/material.dart';

class AppointmentDoctor extends StatefulWidget {
  @override
  _AppointmentDoctorState createState() => _AppointmentDoctorState();
}

class _AppointmentDoctorState extends State<AppointmentDoctor> {
  //list of the doctors
  List<String> doctors = ['Dr. A', "Dr. B", "Dr. C"];
  String doctor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // Doctor
        Text(
          "Doctor : ",
          style: TextStyle(fontSize: 17),
        ),
        SizedBox(
          width: 10,
        ),
        //Dropdown box
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: DropdownButton(
            hint: Text("Select Doctor"),
            underline: SizedBox(),
            dropdownColor: Colors.white,
            value: doctor,
            // set the item of the dropdown button
            items: doctors.map((valueItem) {
              return DropdownMenuItem<String>(
                value: valueItem,
                child: Text(valueItem),
              );
            }).toList(),
            // the value is change after it is modified
            onChanged: (value) {
              setState(() {
                doctor = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
