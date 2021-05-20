import 'package:flutter/material.dart';

class UserData {
  int id;
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

  int get getId => this.id;
  set setId(int id) => this.id = id;
  String get getFirstname => this.firstname;
  set setFirstname(String firstname) => this.firstname = firstname;
  get getLastname => this.lastname;
  set setLastname(lastname) => this.lastname = lastname;
  get getUsername => this.username;
  set setUsername(username) => this.username = username;
  get getPassword => this.password;
  set setPassword(password) => this.password = password;
  get getEmail => this.email;
  set setEmail(email) => this.email = email;
  get getDob => this.dob;
  set setDob(dob) => this.dob = dob;
  get getAddress => this.address;
  set setAddress(address) => this.address = address;
  get getCountry => this.country;
  set setCountry(country) => this.country = country;
  get getCity => this.city;
  set setCity(city) => this.city = city;
  get getZipcode => this.zipcode;
  set setZipcode(zipcode) => this.zipcode = zipcode;
  get getPhone => this.phone;
  set setPhone(phone) => this.phone = phone;
  get getAge => this.age;
  set setAge(age) => this.age = age;

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
