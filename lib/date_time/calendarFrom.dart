import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CalendarFrom extends StatefulWidget {
  @override
  CalendarState createState() => CalendarState();
}

class CalendarState extends State<CalendarFrom> {
  DateTime _dateTime;
  static DateTime now = DateTime.now();
  DateTime yesterDay = DateTime(now.year, now.month, now.day - 1);

  // var formattedDate =  "${_dateTime.day}-${_dateTime.month}-${_dateTime.year}";
  //DateFormat.dateConvert(_dateTime);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("From",
                style: TextStyle(
                  color: Colors.orange,
                )),
            ListTile(
                title: Text(
                  _dateTime == null
                      ? '$now.toLocal()'.split(' ')[0]
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
                    initialDate: now,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2040),
                  ).then((date) {
                    setState(() {
                      _dateTime = date;
                    });
                  });
                })
          ],
        ));
  }
}
