import 'package:flutter/material.dart';
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

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color primarycolor = Colors.blue[700];

    SizedBox widespace = SizedBox(
      width: 10,
    );
    SizedBox heightspace = SizedBox(
      height: 10,
    );
    return Background(
      child: SingleChildScrollView(
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
                  ),
                ),
                widespace,
                Expanded(
                  child: TextFieldProperties(
                    label: "Last Name",
                    icon: Icons.person_outline,
                    onChanges: (value) {},
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
            ),
            heightspace,
            // Password Field
            PasswordTextProperties(
              label: "Password",
              icon: Icons.lock,
              onChanges: (value) {},
              visiblity: Icons.visibility,
            ),
            heightspace,
            PasswordTextProperties(
              label: "Confirm Password",
              icon: Icons.lock,
              onChanges: (value) {},
              visiblity: Icons.visibility,
            ),
            heightspace,
            //Email Field
            TextFieldProperties(
              label: "e-mail",
              icon: Icons.mail,
              onChanges: (value) {},
            ),
            heightspace,
            //Adress Field
            AddressFieldProperties(
              label: "Address",
              onChanges: (value) {},
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
                  ),
                ),
                widespace,
                Expanded(
                  flex: 2,
                  child: TextFieldProperties(
                    icon: Icons.phone,
                    label: "Phone Number",
                    onChanges: (value) {},
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
                  ),
                ),
                widespace,
                Expanded(
                  child: TextFieldProperties(
                    label: "Zip Code",
                    icon: Icons.markunread_mailbox,
                    onChanges: (value) {},
                  ),
                ),
                widespace,
              ],
            ),
            RoundButton(
              label: "Register",
              color: Colors.cyan,
              onpress: () {},
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
