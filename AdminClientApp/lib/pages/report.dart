import 'package:AdminApp/sidemenu.dart';
import 'package:flutter/material.dart';

import '../date_time/calendarFrom.dart';
import '../date_time/calendarTo.dart';
import '../dropDown/DropDelivery.dart';
import '../dropDown/DropPayment.dart';
import '../dropDown/DropReport.dart';
import 'getReport.dart';

class Report extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ReportState();
  }
}

class ReportState extends State<Report> {
  String _value = '';

  void _onClick(String value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        title: Text("Report"),
      ),
      body: Container(
          child: ListView(
        children: [
          SizedBox(
            height: 60,
          ),
          Column(
            children: [
              MediaQuery.of(context).size.width < 800
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(child: CalendarFrom()),
                        Expanded(child: CalendarTo()),
                      ],
                    )
                  : Container(
                      width: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CalendarTo(),
                          CalendarFrom(),
                        ],
                      )),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    child: Text("Report Type",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        )),
                    color: Colors.black,
                  ),
                  DropReport(),
                ],
              )),
              SizedBox(
                height: 40,
              ),
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    child: Text("  Payment Type",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        )),
                    color: Colors.black,
                  ),
                  DropPayment(),
                ],
              )),
              SizedBox(
                height: 40,
              ),
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    child: Text(" Delivery Type",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        )),
                  ),
                  DropDevlivery(),
                ],
              )),
            ],
          )
        ],
      )),
      bottomNavigationBar: BottomAppBar(
        child: new FloatingActionButton(
            elevation: 26.0,
            shape: OutlineInputBorder(
                borderSide: BorderSide(
                    style: BorderStyle.solid, width: 1.0, color: Colors.white),
                borderRadius: new BorderRadius.circular(80.0)),
            child: new Text(
              "GET REPORT ",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Order()),
              );
            }),
      ),
    );
  }
}
