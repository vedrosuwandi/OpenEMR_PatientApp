import 'package:flutter/material.dart';
import 'package:patient_app/LoginScreen/Component/Body.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> quit_app() {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Do you want to Quit AntEMR patient App"),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: Text(
                    "No",
                    style: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: Text(
                    "Yes",
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                )
              ],
            );
          });
    }

    Color primarycolor = Colors.blue[700];
    return WillPopScope(
      onWillPop: quit_app,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: primarycolor,
        body: Body(),
      ),
    );
  }
}
