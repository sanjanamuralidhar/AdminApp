import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalendarTo extends StatefulWidget {
  @override
  CalendarState createState() => CalendarState();
}

class CalendarState extends State<CalendarTo> {
  DateTime _dateTime;
  static DateTime now = DateTime.now();

  DateTime tomarrow = DateTime(now.year, now.month, now.day + 1);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("To",
                style: TextStyle(
                  color: Colors.orange,
                )),
            ListTile(
                title: Text(
                  _dateTime == null
                      ? '$tomarrow.toLocal()'.split(' ')[0]
                      : "$_dateTime.toLocal()".split(' ')[0],
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                trailing: Icon(
                  Icons.calendar_today,
                  color: Colors.blue,
                ),
                onTap: () {
                  showDatePicker(
                          context: context,
                          initialDate: tomarrow,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2040))
                      .then((date) {
                    setState(() {
                      _dateTime = date;
                    });
                  });
                })
          ],
        ));
  }
}
