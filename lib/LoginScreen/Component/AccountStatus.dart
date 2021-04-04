import 'package:flutter/material.dart';

class AccountStatus extends StatelessWidget {
  final bool login;
  final Function onpress;

  const AccountStatus({
    Key key,
    this.login = true,
    this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't Have an Account? " : "Already Have an Account ? ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        GestureDetector(
          onTap: onpress,
          child: Text(
            login ? "Register Now" : "Sign In",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
