import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:patient_app/Data/UserData.dart';
import 'package:patient_app/LoginScreen/Login.dart';

class UserProfile extends StatelessWidget {
  final UserData user;

  const UserProfile({
    Key key,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizedBox heightspace = SizedBox(
      height: size.height * 0.03,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        width: double.infinity,
        // whole profile column
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.03),
            ),
            // Profile Name, Age and Picture Row
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.1),
                ),
                // Profile picture
                Container(
                  padding: EdgeInsets.all(45),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.1,
                ),
                // Profile Name and Age
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      user.firstname + " " + user.lastname,
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      user.age.toString() + " years old",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            // end of Profile Name, Age and Picture Row section
            SizedBox(
              height: size.height * 0.05,
            ),
            // Date of Birth
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.05),
                ),
                Text(
                  "Date of Birth : ",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  width: size.width * 0.01,
                ),
                Text(
                  DateFormat.yMMMMd().format(user.dob),
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            // end of Date of Birth section
            heightspace,
            // Gender
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.05),
                ),
                Text(
                  "Gender : ",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  width: size.width * 0.01,
                ),
                Text(
                  "Male",
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            // end of gender section
            heightspace,
            // Nationality and City Section
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.05),
                ),
                // Nationality
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.05),
                      ),
                      Text(
                        "Nationality : ",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        user.country,
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                //Context
                //City
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.05),
                      ),
                      Text(
                        "City : ",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        user.city,
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.05),
                      ),
                      Text(
                        "ZipCode : ",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        user.zipcode.toString(),
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // end of nationality and city section
            heightspace,
            // Address
            Column(
              children: [
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.05),
                    ),
                    Text(
                      "Address : ",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.15,
                  width: size.width * 0.90,
                  padding: EdgeInsets.only(left: 10, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  child: Text(
                    user.address,
                  ),
                ),
              ],
            ),
            // end of address section
            heightspace,
            // Email Section
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.05),
                ),
                Text(
                  "Email : ",
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  user.email,
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            //end of email section
            heightspace,
            // phone section
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.05),
                ),
                Text(
                  "Phone Number : ",
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  user.phone,
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            //end of phone section
            heightspace,
            //Log out button
            Center(
              child: Container(
                width: size.width * 0.90,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Login();
                      }),
                    );
                  },
                  child: Text(
                    "Log Out",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
