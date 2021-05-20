import 'package:flutter/material.dart';
import 'package:patient_app/Data/UserData.dart';
import 'package:patient_app/HomeScreen/Component/GridViewScene.dart';
import 'package:patient_app/HomeScreen/Component/Profile.dart';
import 'package:patient_app/LoginScreen/Login.dart';

class Dashboard extends StatefulWidget {
  UserData user;

  Dashboard({
    this.user,
  });

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color primarycolor = Colors.blue[700];
    return Scaffold(
      backgroundColor: primarycolor,
      appBar: AppBar(
        title: Text("NHS Patient Dashboard"),
        centerTitle: true,
        automaticallyImplyLeading: false, // to disable the back button
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Login();
                  }),
                );
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/images/ANTEMR_white_horizontal.png',
            width: size.width * 0.6,
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Profile(
              name: widget.user.firstname + " " + widget.user.lastname,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GridViewScene(),
        ],
      ),
    );
  }
}
