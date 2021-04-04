import 'package:flutter/material.dart';

class AppointmentDate extends StatefulWidget {
  @override
  _AppointmentDateState createState() => _AppointmentDateState();
}

class _AppointmentDateState extends State<AppointmentDate> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "Select Appointment Date : ",
          style: TextStyle(fontSize: 17),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: FlatButton(
            color: Colors.grey[100],
            onPressed: () {
              return selectDate(context);
            },
            child: Row(
              children: <Widget>[
                Text(
                  "${date.toLocal()}".split(' ')[0],
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
      ],
    );
  }

  selectDate(BuildContext context) async {
    //selected date
    final DateTime selected = await showDatePicker(
      context: context,
      initialDate: date, // the initial date
      firstDate: DateTime(1900), // the initial date  in the calendar
      lastDate: DateTime(2100), // the final date in the calendar
    );
    if (selected != null && selected != date)
      //changing the date based on the selected date
      setState(() {
        date = selected;
      });
  }
}
