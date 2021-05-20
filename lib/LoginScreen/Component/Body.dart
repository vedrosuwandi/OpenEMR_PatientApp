import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:patient_app/Data/UserData.dart';
import 'package:patient_app/HomeScreen/Dashboard.dart';
import 'package:patient_app/LoginScreen/Component/AccountStatus.dart';
import 'package:patient_app/LoginScreen/Component/Background.dart';
import 'package:patient_app/LoginScreen/Component/PasswordTextProperties.dart';
import 'package:patient_app/LoginScreen/Component/RoundButton.dart';
import 'package:patient_app/LoginScreen/Component/SignInDivider.dart';
import 'package:patient_app/LoginScreen/Component/TextFieldProperties.dart';
import 'package:patient_app/RegisterScreen/Component/SocialLogin.dart';
import 'package:patient_app/RegisterScreen/Register.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  //TextField Controller to store the data input from the textfield
  TextEditingController usercontroller = new TextEditingController();
  TextEditingController passcontroller = new TextEditingController();
  String message = "";
  UserData user = new UserData();

  Future<UserData> login() async {
    final response = await http.post(
      Uri.parse("https://10.0.2.2/conn/login.php"),
      body: {"username": usercontroller.text, "password": passcontroller.text},
    );
    var userdata = jsonDecode(response.body);
    // set the user data

    // validate
    if (userdata.length == 0) {
      message = "Incorrect Username or Password";
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Dashboard(
              user: UserData(
                username: userdata[0]['username'],
                firstname: userdata[0]['fname'],
                lastname: userdata[0]['lname'],
                address: userdata[0]['street'],
                email: userdata[0]['email'],
                zipcode: userdata[0]['zip'],
                phone: userdata[0]['phone'],
                country: userdata[0]['state'],
                city: userdata[0]['city'],
              ),
            );
          },
        ),
      );
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Username Textfield
          TextFieldProperties(
            controller: usercontroller,
            label: "Username",
            icon: Icons.person,
            onChanges: (value) {},
          ),
          //Password Textfield
          PasswordTextProperties(
            controller: passcontroller,
            label: "Password",
            icon: Icons.lock,
            onChanges: (value) {},
          ),
          //Error Message
          Text(
            message,
            style: TextStyle(fontSize: 15, color: Colors.red),
          ),
          //Login Button
          RoundButton(
            label: "Login",
            color: Colors.cyan,
            onpress: () {
              login();
            },
          ),
          SizedBox(
            height: 5,
          ),
          AccountStatus(
            onpress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Register();
                  },
                ),
              );
            },
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          // from divider
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SignInDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialLogin(
                    iconsrc: 'assets/icons/Google.png',
                    onpress: () {},
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SocialLogin(
                    iconsrc: 'assets/icons/Facebook.png',
                    onpress: () {},
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/*
    user.setFirstname = userdata[0]['fname'];
    user.setLastname = userdata[0]['lname'];
    user.setAddress = userdata[0]['street'];
    user.setEmail = userdata[0]['email'];
    user.setCity = userdata[0]['city'];
    user.setPhone = userdata[0]['phone'];
    user.setCountry = userdata[0]['state'];
    user.setZipcode = userdata[0]['zip'];
*/
