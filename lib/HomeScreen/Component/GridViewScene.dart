import 'package:flutter/material.dart';
import 'package:patient_app/Data/UserData.dart';
import 'package:patient_app/HomeScreen/Component/MenuContainer.dart';
import 'package:patient_app/AppointmentScreen/Appointment.dart';
import 'package:intl/intl.dart';
import 'package:patient_app/UserProfileScreen/UserProfile.dart';

class GridViewScene extends StatelessWidget {
  const GridViewScene({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
        padding: EdgeInsets.symmetric(horizontal: 20),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: <Widget>[
          MenuContainer(
            title: "Appointment",
            imagesrc: 'assets/icons/Calendar.png',
            onpress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Appointment();
                  },
                ),
              );
            },
          ),
          MenuContainer(
            title: "Profile",
            imagesrc: "assets/icons/UserProfile.png",
            onpress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return UserProfile(
                    user: UserData(
                      firstname: "Vedro",
                      lastname: "Suwandi",
                      age: 20,
                      dob: DateTime(2000, 10, 07),
                      address: "Jakarta",
                      zipcode: 123456,
                      city: "Jakarta",
                      country: "Indonesia",
                      phone: "+62 - 123456678",
                      email: "vedrosuwandi@gmail.com",
                    ),
                  );
                }),
              );
            },
          ),
          MenuContainer(
            title: "Settings",
            imagesrc: "assets/icons/Settings.png",
            onpress: () {},
          ),
        ],
      ),
    );
  }
}
