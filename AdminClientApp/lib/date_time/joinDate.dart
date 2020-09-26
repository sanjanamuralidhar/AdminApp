
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';

class JoinDate extends StatefulWidget {
  @override
  CalendarState createState() => CalendarState();
}

class CalendarState extends State<JoinDate> {
  DateTime _dateTime;
  static DateTime now = DateTime.now();
  DateTime yesterDay = DateTime(now.year,now.month,now.day-1);
  // var formattedDate =  "${_dateTime.day}-${_dateTime.month}-${_dateTime.year}";
  //DateFormat.dateConvert(_dateTime);
  @override
  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[


        RaisedButton(
          // color: Theme.of(context).iconTheme.color,
          child: Text('Joining Date'),
          onPressed: () {
            showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2022))
                .then((date) {
              setState(() {
                _dateTime = date;
              });
            });
          },
        ),
        SizedBox(width: 60,),
        Text(_dateTime == null
            ? '$yesterDay.toLocal()'.split(' ')[0]
            : "$_dateTime.toLocal()".split(' ')[0] , style: TextStyle(color: Colors.red, fontSize: 18),),
      ],


    );
  }
}
