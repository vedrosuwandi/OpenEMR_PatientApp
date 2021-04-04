import 'package:flutter/material.dart';

class DateofBirthField extends StatefulWidget {
  DateofBirthField({
    Key key,
  }) : super(key: key);

  @override
  _DateofBirthFieldState createState() => _DateofBirthFieldState();
}

class _DateofBirthFieldState extends State<DateofBirthField> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      width: size.width * 0.95,
      height: size.height * 0.05,
      decoration: BoxDecoration(
        color: Colors.white,
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
      child: Row(
        children: <Widget>[
          Text(
            "Date of Birth : ",
            style: TextStyle(fontSize: 15),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 2,
              horizontal: 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: FlatButton(
              onPressed: () {
                return selectDate(context);
              },
              color: Colors.grey[200],
              child: Row(
                children: <Widget>[
                  Text(
                    "${date.toLocal()}".split(' ')[0],
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  selectDate(BuildContext context) async {
    //selected date
    final DateTime selected = await showDatePicker(
      context: context,
      initialDate: date, // the initial date
      firstDate: DateTime(1900), // the initial date  in the calendar
      lastDate: DateTime(2100), // the final date in the calendar
    );
    if (selected != null && selected != date)
      //changing the date based on the selected date
      setState(() {
        date = selected;
      });
  }
}
