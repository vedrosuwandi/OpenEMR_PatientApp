import 'package:flutter/material.dart';

class AppointmentAction extends StatelessWidget {
  String edit = "Edit";
  String delete = "Delete";
  List<String> action = <String>["Edit", "Delete"];
  AppointmentAction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: PopupMenuButton<String>(
        onSelected: select,
        itemBuilder: (context) {
          return action.map((String select) {
            return PopupMenuItem<String>(
              value: select,
              child: Text(select),
            );
          }).toList();
        },
      ),
    );
  }

  void select(String select) {
    if (select == edit) {
      print(edit);
    } else if (select == delete) {
      print(delete);
    }
  }
}
