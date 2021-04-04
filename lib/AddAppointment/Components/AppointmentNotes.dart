import 'package:flutter/material.dart';

class AppointmentNotes extends StatelessWidget {
  const AppointmentNotes({
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
          height: size.height * 0.15,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 7,
                spreadRadius: 5,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: TextField(
            maxLength: 150,
            decoration: InputDecoration(
              hintText: "How are you feeling ?",
              contentPadding:
                  EdgeInsets.symmetric(vertical: size.height * 0.08),
              icon: Icon(
                Icons.sick,
                color: primarycolor,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
