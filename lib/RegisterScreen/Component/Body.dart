import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:patient_app/LoginScreen/Login.dart';
import 'package:patient_app/RegisterScreen/Component/AddressFieldProperties.dart';
import 'package:patient_app/RegisterScreen/Component/Background.dart';
import 'package:patient_app/RegisterScreen/Component/DateofBirthField.dart';
import 'package:patient_app/RegisterScreen/Component/OrDivider.dart';
import 'package:patient_app/RegisterScreen/Component/PasswordTextProperties.dart';
import 'package:patient_app/RegisterScreen/Component/SocialLogin.dart';
import 'package:patient_app/RegisterScreen/Component/TextFieldProperties.dart';
import "package:patient_app/RegisterScreen/Component/RoundButton.dart";
import 'GenderDropdown.dart';
import 'package:patient_app/LoginScreen/Component/AccountStatus.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final formkey = GlobalKey<FormState>();
  TextEditingController firstController = new TextEditingController();
  TextEditingController lastController = new TextEditingController();
  TextEditingController userController = new TextEditingController();
  TextEditingController passController = new TextEditingController();
  TextEditingController confirmpassController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController addressController = new TextEditingController();
  TextEditingController countryController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController cityController = new TextEditingController();
  TextEditingController zipController = new TextEditingController();
  String mes = ' ';

  // this function triggers when the password confirmation isn't correct
  void notMatch() {
    Size size = MediaQuery.of(context).size;
    AlertDialog alert = AlertDialog(
      content: Padding(
        padding: EdgeInsets.only(left: size.width * 0.05),
        child: Text(
          "Password does not match",
          style: TextStyle(color: Colors.red, fontSize: 15),
        ),
      ),
      actions: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.grey,
          child: Text("OK"),
        ),
      ],
    );
    showDialog(
        context: context,
        builder: (context) {
          return alert;
        });
  }

  //triggered when the registration is success
  void success() {
    Size size = MediaQuery.of(context).size;
    AlertDialog alert = AlertDialog(
      content: Padding(
        padding: EdgeInsets.only(left: size.width * 0.05),
        child: Text(
          "You Have Successfully Registered an Account",
          style: TextStyle(
            color: Colors.blue[700],
            fontSize: 15,
          ),
        ),
      ),
      actions: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Login();
            }));
          },
          color: Colors.grey,
          child: Text("Login Now"),
        ),
      ],
    );
    showDialog(
        context: context,
        builder: (context) {
          return alert;
        });
  }

  // register function
  void register() async {
    var url = 'https://10.0.2.2/conn/register.php';
    final response = http.post(Uri.parse(url), body: {
      "username": userController.text,
      "password": passController.text,
      "fname": firstController.text,
      "lname": lastController.text,
      "email": emailController.text,
      "street": addressController.text,
      "state": countryController.text,
      "city": cityController.text,
      "zip": zipController.text,
      "phone": phoneController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color primarycolor = Colors.blue[700];

    SizedBox widespace = SizedBox(
      width: 10,
    );
    SizedBox heightspace = SizedBox(
      height: 20,
    );
    return Background(
      child: Form(
        key: formkey,
        child: Column(
          children: [
            Row(
              // Name Field
              children: [
                widespace,
                Expanded(
                  child: TextFieldProperties(
                    label: "First Name",
                    icon: Icons.person_outline,
                    onChanges: (value) {},
                    controller: firstController,
                    validate: (value) {
                      if (value.isEmpty) {
                        return "* Required";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                widespace,
                Expanded(
                  child: TextFieldProperties(
                    label: "Last Name",
                    icon: Icons.person_outline,
                    onChanges: (value) {},
                    controller: lastController,
                    validate: (value) {
                      if (value.isEmpty) {
                        return "* Required";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                widespace,
              ],
            ),
            heightspace,
            Row(
              // Patient Data
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                widespace,
                // Gender
                Flexible(
                  flex: 1,
                  child: GenderDropdown(),
                ),
                widespace,
                //Date of birth
                Flexible(
                  flex: 3,
                  child: DateofBirthField(),
                ),
                widespace,
              ],
            ),
            heightspace,
            TextFieldProperties(
              // Username Field
              label: "Username",
              icon: Icons.person,
              onChanges: (value) {},
              controller: userController,
              validate: (value) {
                if (value.isEmpty) {
                  return "* Required";
                } else {
                  return null;
                }
              },
            ),
            heightspace,
            // Password Field
            PasswordTextProperties(
                label: "Password",
                icon: Icons.lock,
                onChanges: (value) {},
                controller: passController,
                validate: (value) {
                  if (value.isEmpty) {
                    return "* Required";
                  } else {
                    return null;
                  }
                }),
            heightspace,
            PasswordTextProperties(
                label: "Confirm Password",
                icon: Icons.lock,
                onChanges: (value) {},
                controller: confirmpassController,
                validate: (value) {
                  if (value.isEmpty) {
                    return "* Required";
                  } else {
                    return null;
                  }
                }),
            heightspace,
            //Email Field
            TextFieldProperties(
              label: "e-mail",
              icon: Icons.mail,
              onChanges: (value) {},
              controller: emailController,
              validate: (value) {
                RegExp emailvalidate =
                    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                if (value.isEmpty) {
                  return "* Required";
                } else if (emailvalidate.hasMatch(value) == false) {
                  return "Please Enter a valid email address";
                } else {
                  return null;
                }
              },
            ),
            heightspace,
            //Adress Field
            AddressFieldProperties(
              label: "Address",
              onChanges: (value) {},
              controller: addressController,
            ),
            heightspace,
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.02),
                ),
                Expanded(
                  flex: 1,
                  child: TextFieldProperties(
                    // Country Field
                    label: "Country",
                    icon: Icons.flag,
                    onChanges: (value) {},
                    controller: countryController,
                    validate: (value) {
                      if (value.isEmpty) {
                        return "* Required";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                widespace,
                Expanded(
                  flex: 2,
                  child: TextFieldProperties(
                    icon: Icons.phone,
                    label: "Phone Number",
                    onChanges: (value) {},
                    controller: phoneController,
                    validate: (value) {
                      RegExp phonevalidate = RegExp(r"^\+?0[0-9]{10}$");
                      if (value.isEmpty) {
                        return "Please Enter Your Phone Number";
                      } else if (phonevalidate.hasMatch(value) == false) {
                        return "Please enter a 11 digits number";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                widespace,
              ],
            ),
            heightspace,
            Row(
              // City Field
              children: <Widget>[
                widespace,
                Expanded(
                  child: TextFieldProperties(
                    label: "City",
                    icon: Icons.location_city,
                    onChanges: (value) {},
                    controller: cityController,
                    validate: (value) {
                      if (value.isEmpty) {
                        return "Please Enter Your City";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                widespace,
                Expanded(
                  child: TextFieldProperties(
                    label: "Zip Code",
                    icon: Icons.markunread_mailbox,
                    onChanges: (value) {},
                    controller: zipController,
                    validate: (value) {
                      if (value.isEmpty) {
                        return "* Required";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                widespace,
              ],
            ),
            RoundButton(
              label: "Register",
              color: Colors.cyan,
              onpress: () {
                if (formkey.currentState.validate()) {
                  if (passController.text != confirmpassController.text) {
                    notMatch();
                  } else {
                    success();
                    register();
                  }
                }
              },
            ),
            AccountStatus(
              login: false,
              onpress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialLogin(
                  iconsrc: 'assets/icons/Google.png',
                  onpress: () {},
                ),
                widespace,
                SocialLogin(
                  iconsrc: 'assets/icons/Facebook.png',
                  onpress: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
