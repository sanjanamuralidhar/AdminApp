
import 'package:AdminApp/mocks/deliverModel.dart';
import 'package:AdminApp/sidemenu.dart';
import 'package:flutter/material.dart';
import 'addDeliveryboy.dart';
import 'deliveryBoyModel.dart';
import 'deliveryBoy_multSelect.dart';
import 'notification.dart';

class Delivery extends StatefulWidget {
  //final ColorCallback onColorSelect;

  const Delivery({
    Key key,
  }) : super(key: key);

  @override
  DeliveryState createState() => DeliveryState();
}

class DeliveryState extends State<Delivery> {
  bool selectedColor = true;

  bool isSwitched = false;
  Widget appBarTitle = new Text('Delivery Team');
  Icon actionIcon = new Icon(Icons.search);
  int _counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        title: appBarTitle,
        actions: [
          new IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(() {
                if (this.actionIcon.icon == Icons.search) {
                  this.actionIcon = new Icon(Icons.close);
                  this.appBarTitle = new TextField(
                    style: new TextStyle(
                      color: Colors.white,
                    ),
                    decoration: new InputDecoration(
                        prefixIcon: new Icon(Icons.search, color: Colors.white),
                        hintText: "Search...",
                        hintStyle: new TextStyle(color: Colors.white)),
                  );
                } else {
                  this.actionIcon = new Icon(Icons.search);
                  this.appBarTitle = new Text('Delivery Team');
                }
              });
            },
          ),
          buildMulti()
        ],
      ),
      body: selectedColor
          ? ListView.builder(
              itemCount: deliverBoys.length,
              itemBuilder: (BuildContext context, int index) {
                DeliveryModel delivery = deliverBoys[index];
                return DeliveryView(
                  delivery: delivery,
                  onColorSelect: (bool color) {
                    setState(() {
                      selectedColor = color;
                    });
                  },
                );
              })
          : MultiSelect(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.person_add),
          backgroundColor: Colors.orange,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddBoy(),
                ));
          }),
    );
  }

  // ignore: missing_return
  Widget buildMulti() {
    // bool onColorSelect =false;

    if (selectedColor == true) {
      return Container(
        child: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                  // bottom: 0,
                  child: new IconButton(
                      tooltip: "Requests",
                      icon: Icon(
                        Icons.notifications,
                        size: 26,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotificationP(),
                            ));
                      })),
              new Positioned(
                right: 0,
                child: new Container(
                  // padding: EdgeInsets.all(1),
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 15,
                    minHeight: 15,
                  ),
                  child: new Text(
                    '$_counter',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    } else if (selectedColor == true) {
      return Container(
        child: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                  // bottom: 0,
                  child: new IconButton(
                      tooltip: "Deletion",
                      icon: Icon(
                        Icons.delete,
                        size: 30,
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("deletion contact?"),
                                actions: [
                                  FlatButton(
                                    child: Text(
                                      "Ok",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Delivery();
                                      }));
                                    },
                                  ),
                                  FlatButton(
                                    child: Text(
                                      "cancel",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Delivery();
                                      }));
                                    },
                                  ),
                                ],
                              );
                            });
                      })),
            ],
          ),
        ),
      );
    }
  }
}
