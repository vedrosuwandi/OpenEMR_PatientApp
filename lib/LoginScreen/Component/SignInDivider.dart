import 'package:flutter/material.dart';

class SignInDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          dividerLine(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Sign In with",
              style: TextStyle(
                color: Colors.cyan,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
          ),
          dividerLine(),
        ],
      ),
    );
  }

  Expanded dividerLine() {
    return Expanded(
      child: Divider(
        color: Colors.white,
      ),
    );
  }
}
