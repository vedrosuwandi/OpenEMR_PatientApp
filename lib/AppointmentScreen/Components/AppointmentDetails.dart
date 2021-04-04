import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:patient_app/AppointmentScreen/Components/RoundedButton.dart';
import 'package:patient_app/Data/DoctorData.dart';
import 'package:patient_app/DoctorDetailsScreen/DoctorDetails.dart';
import '../../Data/AppointmentData.dart';

class AppointmentDetails extends StatefulWidget {
  final AppointmentData details;
  const AppointmentDetails({
    Key key,
    this.details,
  });

  @override
  _AppointmentDetailsState createState() => _AppointmentDetailsState();
}

class _AppointmentDetailsState extends State<AppointmentDetails> {
  @override
  Widget build(BuildContext context) {
    TextStyle contextsize = TextStyle(fontSize: 18);
    SizedBox heightspace = SizedBox(
      height: 20,
    );
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Appointment Details"),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Appointment Date and time
                Row(
                  children: [
                    //Appointment Date
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Appointment Date : ",
                          style: contextsize,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        FlatButton(
                          color: Colors.grey[100],
                          onPressed: () {
                            selectDate(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "${widget.details.date.toLocal()}"
                                    .split(' ')[0],
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ],
                    ),
                    //end of appointment Date
                    SizedBox(
                      width: 15,
                    ),
                    // Appointment Time
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Appointment Time : ",
                          style: contextsize,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        FlatButton(
                          color: Colors.grey[100],
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "${widget.details.time}",
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //end of Appointment Date and Time
                heightspace,
                //Appointment Description
                Container(
                  width: size.width * 0.95,
                  height: size.height * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.details.notes,
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                // end of the Description
                heightspace,
                // location
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Location : ",
                      style: contextsize,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.details.hospital,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                //end of Location
                heightspace,

                //AppointmentDoctor
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Doctor : ",
                        style: contextsize,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        widget.details.doctor,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return DoctorDetails(
                                doctor: DoctorData(
                                  name: widget.details.doctor,
                                ),
                              );
                            }),
                          );
                        },
                        child: Text(
                          "View Details",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                // end of Doctor
                heightspace,
                //Status
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Status : ",
                      style: contextsize,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      //Categories
                      children: <Widget>[
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(widget.details.status),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("Pending"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("Completed"),
                        ),
                      ],
                    ),
                  ],
                ),
                //end of status
                heightspace,
                //Category
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Category : ",
                      style: contextsize,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      //Categories
                      children: <Widget>[
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("Outpatient"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("eConsultant"),
                        ),
                      ],
                    ),
                  ],
                ),
                // End of Category
                SizedBox(
                  height: size.height * 0.1,
                ),
                // Cancel Appointment Button
                Center(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      RoundedButton(
                        label: "Cancel Appointment",
                        button_color: Colors.red,
                        onpress: () {},
                      ),
                    ],
                  ),
                ),
                // Edit or Delete Appointment
              ],
            ),
          ),
        ),
      ),
    );
  }
  /*
  Future<Null> selectedTime(BuildContext context) async {
    selected = await showTimePicker(
      context: context,
      initialTime: ,
    );

    if (selected != null && selected != time) {
      setState(() {
        time = selected;
      });
    }
  }
*/

  selectDate(BuildContext context) async {
    //selected date
    final DateTime selected = await showDatePicker(
      context: context,
      initialDate: widget.details.date, // the initial date
      firstDate: DateTime(1900), // the initial date  in the calendar
      lastDate: DateTime(2100), // the final date in the calendar
    );
    if (selected != null && selected != widget.details.date)
      //changing the date based on the selected date
      setState(() {
        widget.details.date = selected;
      });
  }
}
