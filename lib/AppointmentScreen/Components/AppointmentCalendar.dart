import 'package:flutter/material.dart';
import "package:table_calendar/table_calendar.dart";

class AppointmentCalendar extends StatefulWidget {
  @override
  _AppointmentCalendarState createState() => _AppointmentCalendarState();
}

class _AppointmentCalendarState extends State<AppointmentCalendar> {
  CalendarController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    Color primarycolor = Colors.blue[700];
    return TableCalendar(
      // the style of the calendar content
      calendarStyle: CalendarStyle(
        todayColor: Colors.cyan,
        selectedColor: primarycolor,
        todayStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      // the header style of the calendar
      headerStyle: HeaderStyle(
        //centered the title
        centerHeaderTitle: true,
        // the button for show the each month , week or two weeks
        formatButtonDecoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(10),
        ),
        formatButtonTextStyle: TextStyle(
          color: Colors.white,
        ),
        // to ensure that the calendar are not showing the next button
        formatButtonShowsNext: false,
      ),
      // set the start of the week
      startingDayOfWeek: StartingDayOfWeek.monday,
      /*
      onDaySelected: (date, events, _) {
        setState(() {
          AppointmentContainer(
            child: AppointmentContent(
              doctor: "Dr. A",
              status: "Arrived",
              appointment_time: DateFormat.yMMMMd().format(DateTime.now()),
              hospital: "City A Hospital",
            ),
          );
        });
      },
      */
      calendarController: controller,
    );
  }
}
