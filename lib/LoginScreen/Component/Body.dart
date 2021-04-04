import 'package:flutter/material.dart';
import 'package:patient_app/HomeScreen/Dashboard.dart';
import 'package:patient_app/LoginScreen/Component/AccountStatus.dart';
import 'package:patient_app/LoginScreen/Component/Background.dart';
import 'package:patient_app/LoginScreen/Component/PasswordTextProperties.dart';
import 'package:patient_app/LoginScreen/Component/RoundButton.dart';
import 'package:patient_app/LoginScreen/Component/SignInDivider.dart';
import 'package:patient_app/LoginScreen/Component/TextFieldProperties.dart';
import 'package:patient_app/RegisterScreen/Component/SocialLogin.dart';
import 'package:patient_app/RegisterScreen/Register.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Username Textfield
          TextFieldProperties(
            label: "Username",
            icon: Icons.person,
            onChanges: (value) {},
          ),
          //Password Textfield
          PasswordTextProperties(
            label: "Password",
            icon: Icons.lock,
            visiblity: Icons.visibility,
            onChanges: (value) {},
          ),
          //Login Button
          RoundButton(
            label: "Login",
            color: Colors.cyan,
            onpress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Dashboard();
                  },
                ),
              );
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
