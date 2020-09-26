
import 'package:AdminApp/sidemenu.dart';
import 'package:flutter/material.dart';

import 'addOffer.dart';
import 'editOffer.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  final List<String> _options = [
    'edit',
    'remove',
  ];

  void optionSelectedFunction(String optionSelected) {
    if (optionSelected == _options[0]) {
      print('option 1 selected');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => EditOffer()));
    }
    if (optionSelected == _options[1]) {
      print('option 2 selected');
      showAlertDialog(context);
    }
  }

  @override
  Widget build(BuildContext context) {

     return Scaffold(
            drawer: SideMenu(),
            appBar: AppBar(
              title: Text('Offers'),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddOffer()));
              },
              child: Icon(Icons.note_add),
            ),
            body: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Card(
                    
                    
                      child: ListTile(
                    title: Text("SUPER10"),
                    // isThreeLine: true,
                    subtitle: Text("10% off for 1st and every 10th order"),
                    trailing: PopupMenuButton<String>(
                      itemBuilder: (BuildContext context) =>
                          _options.map((String option) {
                        return PopupMenuItem(
                          child: Text(option),
                          value: option,
                        );
                      }).toList(),
                      onSelected: (String optionSelected) {
                        optionSelectedFunction(optionSelected);
                      },
                      //properties
                      tooltip: 'Popup Menu Button',
                      onCanceled: () {
                        print(
                            'user dismissed popup menu without selecting any option');
                      },
                    ),
                  )),
                ),
              ],
            ));
  }
}

void showAlertDialog(BuildContext context) {
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
    title: Text("Confirmation"),
    content: Text("Are you sure you want to remove."),
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
