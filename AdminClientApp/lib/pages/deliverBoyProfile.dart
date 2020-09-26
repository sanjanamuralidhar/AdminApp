import 'package:AdminApp/models/deliverModel.dart';
import 'package:AdminApp/pages/editRestaurant.dart';
import 'package:AdminApp/pages/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../date_time/timePick.dart';

class BoyProfile extends StatefulWidget {
  final DeliveryModel delivery;
  final bool isRequest;

  BoyProfile(this.delivery, {this.isRequest});

  @override
  State<StatefulWidget> createState() {
    return BoyProfileState();
  }
}

class BoyProfileState extends State<BoyProfile> {
  String name;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget buildPic() {
    return Center(
      child: Stack(overflow: Overflow.visible, children: <Widget>[
        CircleAvatar(
          //padding: const EdgeInsets.all(8.0),
          radius: 71,
          backgroundColor: Colors.orange,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            backgroundImage: AssetImage(widget.delivery.imageUrl),
            radius: 70,
          ),
        ),

        //SizedBox(height: 20, width: 100),
      ]),
    );
  }

  Widget buildName() {
    return TextField(
      readOnly: true,
      controller:
          TextEditingController(text: " ${widget.delivery.name}.H.kumar"),
      decoration: InputDecoration(
          labelText: 'Name:',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
    );
  }

  Widget buildContact() {
    return TextField(
      readOnly: true,
      controller: TextEditingController(text: " 957643967349"),
      decoration: InputDecoration(
          labelText: 'Personal Number:',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
    );
  }

  Widget buildContact1() {
    return TextField(
      readOnly: true,
      controller: TextEditingController(text: " 485679065367"),
      decoration: InputDecoration(
          labelText: 'Office Number:',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
    );
  }

  Widget buildMail() {
    return TextField(
      readOnly: true,
      controller: TextEditingController(text: "bhagyaviru@gmail.com"),
      decoration: InputDecoration(
          labelText: 'Mail ID:',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
    );
  }

  Widget buildAdar() {
    return TextField(
      readOnly: true,
      controller: TextEditingController(text: " 648965A76348FG"),
      decoration: InputDecoration(
          labelText: 'Adhar Number:',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
    );
  }

  Widget buildJoin() {
    return TextField(
      readOnly: true,
      controller: TextEditingController(text: "1/2/2020"),
      decoration: InputDecoration(
          labelText: 'Join Date:',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
    );
  }

  Widget buildAddress() {
    return TextField(
      readOnly: true,
      controller: TextEditingController(
          text: "Thrissur District , P.O - Thrithalloor , PIN : 680156"),
      decoration: InputDecoration(
          labelText: 'Address:',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Employee Profile ")),
      body: Container(
        margin: EdgeInsets.all(25),
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                buildPic(),
                SizedBox(
                  height: 60,
                ),
                buildName(),
                SizedBox(
                  height: 30,
                ),
                buildContact(),
                SizedBox(
                  height: 30,
                ),
                buildContact1(),
                SizedBox(
                  height: 30,
                ),
                buildMail(),
                SizedBox(
                  height: 30,
                ),
                buildJoin(),
                SizedBox(
                  height: 30,
                ),
                buildAdar(),
                SizedBox(
                  height: 30,
                ),
                buildAddress(),
              ],
            ),
            widget.isRequest
                ? Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Row(
                      children: [
                        Expanded(
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {
                              showAlert(context);
                            },
                            child: Text(
                              "Approve",
                              style: TextStyle(fontSize: 20),
                            ),
                            color: Colors.lightGreen,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            child: Text(
                              "Reject",
                              style: TextStyle(fontSize: 20),
                            ),
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                )
                : Text(''),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget cancelButton = FlatButton(
    child: Text('cancel'),
    onPressed: () => Navigator.of(context).pop(),
  );
  Widget okButton = FlatButton(
    child: Text('ok'),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * .6,
              child: TextFormField(
                decoration: InputDecoration(
                    // border: InputBorder.none,
                    labelText: 'Remarks'),
              ),
            ),
          ],
        ),
        // SizedBox(height: 10.0,),
        // Row(
        //   children: <Widget>[

        //     Text('Confirmation'),
        //   ],
        // )
      ],
    ),
    content: Text("Are you sure you want to reject."),
    actions: [okButton, cancelButton],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlert(BuildContext context) {
  Fluttertoast.showToast(
      msg: "          Approved          ",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0);
}

//
//IconButton(
//onPressed: () {
//Navigator.push(
//context,
//MaterialPageRoute(
//builder: (context) => EditForm()),
//);
//},
//icon: Icon(
//Icons.edit,
//color: Colors.blue,
//),
//// ignore: missing_return
//),
