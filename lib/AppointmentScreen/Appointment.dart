import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:patient_app/AddAppointment/AddAppointment.dart';
import 'package:patient_app/AppointmentScreen/Components/AppointmentCalendar.dart';
import 'package:patient_app/AppointmentScreen/Components/AppointmentContainer.dart';
import 'package:patient_app/Data/AppointmentData.dart';

class Appointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Appointments"),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: GestureDetector(
              onTap: () {},
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return AddAppointment();
                    }),
                  );
                },
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: <Widget>[
              //calendar
              AppointmentCalendar(),
              // the appointments
              AppointmentContainer(
                data: AppointmentData(
                  doctor: "Dr. A",
                  status: "Arrived",
                  date: DateTime.now(),
                  hospital: "City A Hospital",
                  category: "Completed",
                  notes: "I had a stomacache",
                  time: "09.00 AM",
                ),
              ),
              AppointmentContainer(
                data: AppointmentData(
                  doctor: "Dr. B",
                  status: "Pending",
                  date: DateTime(2021, 4, 17),
                  hospital: "City A Hospital",
                  category: "Arrived",
                  notes: "I had a fever",
                  time: "15.00 PM",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
