import 'package:AdminApp/date_time/calendarFrom.dart';
import 'package:AdminApp/date_time/calendarTo.dart';

import 'package:AdminApp/sidemenu.dart';
import 'package:flutter/material.dart';

import 'DropDelivery.dart';
import 'DropPayment.dart';
import 'DropReport.dart';
import 'getReport.dart';

class Report extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ReportState();
  }
}

class ReportState extends State<Report> {
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
                  // ignore: missing_required_param
                  FlatButton(
                    // onPressed: (){},
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
                  // ignore: missing_required_param
                  FlatButton(
                    // onPressed: (){},
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
                  // ignore: missing_required_param
                  FlatButton(
                    // onPressed: (){},
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
