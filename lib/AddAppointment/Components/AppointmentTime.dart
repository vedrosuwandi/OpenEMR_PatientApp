import 'package:flutter/material.dart';

class AppointmentTime extends StatefulWidget {
  @override
  _AppointmentTimeState createState() => _AppointmentTimeState();
}

class _AppointmentTimeState extends State<AppointmentTime> {
  TimeOfDay time = TimeOfDay.now();
  TimeOfDay selected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "Select Appointment Time : ",
          style: TextStyle(fontSize: 17),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: FlatButton(
              color: Colors.grey[100],
              onPressed: () {
                selectedTime(context);
              },
              child: Row(
                children: <Widget>[
                  // to print the time into h:mm format
                  Text(
                    "${time.format(context)}",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              )),
        ),
      ],
    );
  }

  Future<Null> selectedTime(BuildContext context) async {
    selected = await showTimePicker(
      context: context,
      initialTime: time,
    );

    if (selected != null && selected != time) {
      setState(() {
        time = selected;
      });
    }
  }
}
