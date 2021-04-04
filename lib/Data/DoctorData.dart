import 'package:flutter/material.dart';
import 'package:patient_app/Data/AppointmentData.dart';

class DoctorData extends AppointmentData {
  String name;
  String specialist;
  String clinic;
  String phone;
  String email;
  String undergraduate;
  String postgraduate;
  String mastergraduate;

  DoctorData({
    Key key,
    this.name,
    this.specialist,
    this.clinic,
    this.phone,
    this.email,
    this.undergraduate,
    this.postgraduate,
    this.mastergraduate,
  });

  Map<String, dynamic> get map {
    return {
      "name": name,
      "specialist": specialist,
      "clinic": clinic,
      "phone": phone,
      "email": email,
      "undergraduate": undergraduate,
      "postgraduate": postgraduate,
      "mastergraduate": mastergraduate,
    };
  }
}
