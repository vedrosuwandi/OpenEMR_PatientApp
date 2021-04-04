import 'package:flutter/material.dart';

class AppointmentLocation extends StatelessWidget {
  AppointmentLocation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color primarycolor = Colors.blue[700];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: size.width * 0.95,
          height: size.height * 0.15,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                blurRadius: 7,
                spreadRadius: 5,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: TextFormField(
            maxLength: 100,
            decoration: InputDecoration(
              hintText: "Location",
              icon: Icon(
                Icons.location_on,
                color: primarycolor,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: size.height * 0.08),
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }
}
