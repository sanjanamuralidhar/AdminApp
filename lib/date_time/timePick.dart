import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TimePick extends StatefulWidget {
  @override
  TimepickState createState() => TimepickState();
}

class TimepickState extends State<TimePick> {
  TimeOfDay time;
  TimeOfDay timeNow = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RaisedButton(
          //color: Colors.white,
          child: Text('Delivery Time'),
          onPressed: () {
            showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            ).then((date) {
              setState(() {
                time = date;
              });
            });
          },
        ),
        SizedBox(
          width: 60,
        ),
        Text(
          time == null ? "$timeNow".split('y')[1] : "$time".split('y')[1],
          style: TextStyle(color: Colors.red, fontSize: 18),
        ),
      ],
    );
  }
}
