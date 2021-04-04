import 'package:flutter/material.dart';

class AppointmentData {
  String doctor;
  String status;
  DateTime date;
  String hospital;
  String notes;
  String category;
  String time;

  AppointmentData({
    Key key,
    this.notes,
    this.category,
    this.time,
    this.doctor,
    this.status,
    this.date,
    this.hospital,
  });

  Map<String, dynamic> get map {
    return {
      "doctor": doctor,
      "status": status,
      "date": date,
      "hospital": hospital,
      "category": category,
      "notes": notes,
      "time": time,
    };
  }
}
