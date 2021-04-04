import 'package:flutter/material.dart';
import 'package:patient_app/AppointmentScreen/Components/RoundedButton.dart';
import '../Data/DoctorData.dart';

class DoctorDetails extends StatelessWidget {
  final DoctorData doctor;

  const DoctorDetails({
    Key key,
    this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    Color primarycolor = Colors.blue[700];
    TextStyle fontsize = TextStyle(fontSize: 17);
    Size size = MediaQuery.of(context).size;
    SizedBox widespace = SizedBox(width: size.width * 0.02);
    SizedBox heightspace = SizedBox(
      height: size.height * 0.02,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor Details"),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.02),
              child: Container(
                padding: EdgeInsets.all(75),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            //end of Profile Picture
            heightspace,
            //Doctor Name and Specialist
            Column(
              children: <Widget>[
                Text(
                  doctor.name,
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Specialist",
                  style: fontsize,
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            // Doctor Education Background
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Icon(Icons.menu_book_outlined),
                          widespace,
                          Text(
                            "Education : ",
                            style: fontsize,
                          ),
                        ],
                      ),
                      Container(
                        width: size.width * 0.95,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "Undergraduate : ",
                                  style: fontsize,
                                ),
                                Text(
                                  "City A University",
                                  style: fontsize,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "Postgraduate : ",
                                  style: fontsize,
                                ),
                                Text(
                                  "City B University",
                                  style: fontsize,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "Mastergraduate : ",
                                  style: fontsize,
                                ),
                                Text(
                                  "City C University",
                                  style: fontsize,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //End of the Doctor Education
            heightspace,
            // The Clinic Location that the doctor operates
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.home),
                  widespace,
                  Text(
                    "Clinic Address : ",
                    style: fontsize,
                  ),
                  Text(
                    "City A Hospital Room 123",
                    style: fontsize,
                  ),
                ],
              ),
            ),
            // End of Clinic Section
            heightspace,
            // Phone Number
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.phone),
                  widespace,
                  Text(
                    "Phone Number : ",
                    style: fontsize,
                  ),
                  Text(
                    "+44-12344556",
                    style: fontsize,
                  ),
                ],
              ),
            ),
            //end of Phone Number Section
            heightspace,
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  widespace,
                  Text(
                    "e-Mail Address : ",
                    style: fontsize,
                  ),
                  Text(
                    "a@gmail.com",
                    style: fontsize,
                  ),
                ],
              ),
            ),
            //End of Email Section
            heightspace,
            RoundedButton(
              label: "Call Doctor",
              button_color: Colors.green,
              onpress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
