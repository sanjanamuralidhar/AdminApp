import 'package:AdminApp/bloc/CheckBox/checkBox_Bloc.dart';
import 'package:AdminApp/models/deliverModel.dart';
import 'package:AdminApp/models/multiSelect_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:share/share.dart';

import 'package:flutter/material.dart';
import '../sidemenu.dart';
import 'deliveryBoy_page.dart';

class MultiSelect extends StatefulWidget {
  const MultiSelect({
    Key key,
  }) : super(key: key);

  @override
  MultiSelectState createState() => MultiSelectState();
}

class MultiSelectState extends State<MultiSelect> {
  bool isSwitched = false;
  Widget appBarTitle = new Text('Select Contacts');
  Icon actionIcon = new Icon(Icons.undo);
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
              tooltip: "cancel",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Delivery();
                }));
              },
            ),
            IconButton(
                icon: Icon(
                  Icons.share,
                  color: Colors.black,
                ),
                onPressed: () {
                  share(context);
                }),
            buildMulti()
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
                children: List.generate(deliverBoys.length, (index) {
          return BlocProvider(
            create: (BuildContext context) => CheckBoxBloc(),
            child: MultiModel(
              delivery: deliverBoys[index],
              // checkValue: false,
            ),
          );
          // }
        }))));
  }

  Widget buildMulti() {
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
                              title: Text("delete contacts?"),
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

  void share(BuildContext context) {
    final RenderBox box = context.findRenderObject();
    final String text = '''Greetings from Graeshoppe !!
  
                      Abhijith - 9745278256
                      MailId - adholokam@gmail.com
                      
                      download GraeShoppe -https://www.instagram.com/abhijith_madhusoodanan/?hl=en 
                      ''';
    Share.share(text,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}
