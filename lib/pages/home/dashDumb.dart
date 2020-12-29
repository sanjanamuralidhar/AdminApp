
import 'package:AdminApp/pages/orders/orderDetailsCount_page.dart';
import 'package:flutter/material.dart';

class UpdateText extends StatefulWidget {
  UpdateTextState createState() => UpdateTextState();
}

class UpdateTextState extends State {
  @override
  Widget build(BuildContext context) {
    Widget textHolder = Container(
        child: Column(
      children: [
        Container(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Total Orders",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "32",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Approval Pending",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return OrderDetailsCountPage("Approval Pending Orders");
                  }));
                },
                child: new PhysicalModel(
                  color: Colors.white,
                  child: new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(25.0),
                      border: new Border.all(
                        width: 5.0,
                        color: Colors.blue,
                      ),
                    ),
                    child: Center(child: Text("4")),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Approved",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return OrderDetailsCountPage("Approved Orders");
                  }));
                },
                child: new PhysicalModel(
                  color: Colors.white,
                  child: new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(25.0),
                      border: new Border.all(
                        width: 5.0,
                        color: Colors.blue,
                      ),
                    ),
                    child: Center(child: Text("10")),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Approval completed",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return OrderDetailsCountPage("Approval Completed Orders");
                  }));
                },
                child: new PhysicalModel(
                  color: Colors.white,
                  child: new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(25.0),
                      border: new Border.all(
                        width: 5.0,
                        color: Colors.green,
                      ),
                    ),
                    child: Center(child: Text("20")),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
//    });

    return Center(
        child: Column(children: <Widget>[
//      RaisedButton(
//        onPressed: () => changeText(),
//        child: Text('Apply'),
//        textColor: Colors.white,
//       color: Colors.green,
//        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//      ),
      textHolder,
    ]));
  }
}
