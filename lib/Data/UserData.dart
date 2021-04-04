import 'package:flutter/material.dart';

class UserData {
  String firstname;
  String lastname;
  String username;
  String password;
  String email;
  DateTime dob;
  String address;
  String country;
  String city;
  int zipcode;
  String phone;
  int age;

  UserData({
    Key key,
    this.firstname,
    this.lastname,
    this.username,
    this.email,
    this.dob,
    this.address,
    this.country,
    this.city,
    this.zipcode,
    this.phone,
    this.age,
  });

  Map<String, dynamic> get map {
    return {
      "firstname": firstname,
      "lastname": lastname,
      "username": username,
      "password": password,
      "dob": dob,
      "age": age,
      "phone": phone,
      "email": email,
      "address": address,
      "country": country,
      "city": city,
      "zipcode": zipcode,
    };
  }
}
