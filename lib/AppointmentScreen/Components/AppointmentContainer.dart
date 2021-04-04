import 'package:flutter/material.dart';
import 'package:patient_app/AppointmentScreen/Components/AppointmentAction.dart';
import 'package:patient_app/AppointmentScreen/Components/AppointmentDetails.dart';
import '../../Data/AppointmentData.dart';

class AppointmentContainer extends StatelessWidget {
  final AppointmentData data;
  const AppointmentContainer({
    Key key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // the appointment container
    return Card(
      // to make each of the container are accessible
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AppointmentDetails(
                  details: AppointmentData(
                    doctor: data.doctor,
                    status: data.status,
                    date: data.date,
                    hospital: data.hospital,
                    notes: data.notes,
                    time: data.time,
                    category: data.category,
                  ),
                );
              },
            ),
          );
        },
        // the appointment content
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
          ),
          width: size.width * 0.95,
          height: size.height * 0.2,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    // the doctor name
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
                      child: Text(
                        data.doctor,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Expanded(
                    child: AppointmentAction(),
                  ),
                ],
              ),
              // the brief of the appointment
              //status
              Row(
                children: <Widget>[
                  Icon(Icons.check_circle),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
                  ),
                  Text(data.status),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              // appointment time
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.timer),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
                  ),
                  Text(
                    "${data.date}".split(' ')[0],
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              // hospital
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.local_hospital),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
                  ),
                  Text(
                    data.hospital,
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
