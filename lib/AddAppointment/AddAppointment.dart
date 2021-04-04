import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:patient_app/AddAppointment/Components/AddButton.dart';
import 'package:patient_app/AddAppointment/Components/AppointmentCategory.dart';
import 'package:patient_app/AddAppointment/Components/AppointmentDate.dart';
import 'package:patient_app/AddAppointment/Components/AppointmentDoctor.dart';
import 'package:patient_app/AddAppointment/Components/AppointmentLocation.dart';
import 'package:patient_app/AddAppointment/Components/AppointmentNotes.dart';
import 'package:patient_app/AddAppointment/Components/AppointmentTime.dart';
import 'package:patient_app/AddAppointment/Components/PhoneNumberField.dart';

class AddAppointment extends StatefulWidget {
  @override
  _AddAppointmentState createState() => _AddAppointmentState();
}

class _AddAppointmentState extends State<AddAppointment> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizedBox heightspace = SizedBox(
      height: 15,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Add Appointment"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(left: 10, right: 10, top: size.height * 0.01),
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
          child: Column(
            children: <Widget>[
              // Appointment Date
              AppointmentDate(),
              //Appointment Time
              AppointmentTime(),
              //Appointment Category
              AppointmentCategory(),
              //Appointment Doctor
              AppointmentDoctor(),
              heightspace,
              // Patient Contacts
              PhoneNumberField(),
              heightspace,
              //Appointment Location
              AppointmentLocation(),
              // Add Appointment Button
              heightspace,
              //Appointment Details
              AppointmentNotes(),
              //Add Appointment Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AddButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
