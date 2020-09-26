import 'package:AdminApp/pages/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:flutter/services.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  String name;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<String> _checked = [];

  String _time = " Open ";
  String _time1 = " Close";

  String validateEmailOrPhone(String value) {
    Pattern email =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    Pattern phone = r'(?<!\d)\d{10}(?!\d)';
    RegExp phoneRegex = new RegExp(phone);
    RegExp emailRegex = new RegExp(email);
    if (emailRegex.hasMatch(value) || phoneRegex.hasMatch(value)) {
      return null;
    } else {
      return 'Enter Correct Email or Phone Number';
    }
  }

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));

    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
    }

    // Build a Form widget using the _formKey created above.
    String validateEmail(String value) {
      Pattern email =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

      RegExp emailRegex = new RegExp(email);
      if (emailRegex.hasMatch(value)) {
        return null;
      } else {
        return 'Enter Correct Email';
      }
    }

    var screenSize = MediaQuery.of(context).size;
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          Card(
              child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter name ';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        icon: const Icon(Icons.restaurant_menu),
                        hintText: 'Name',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        suffixText: '*',
                        suffixStyle: TextStyle(
                          color: Colors.red,
                        )),
                  ))),
          Card(
              child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    validator: validateEmail,
                    decoration: const InputDecoration(
                        icon: const Icon(Icons.mail),
                        hintText: 'Email  ',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        suffixText: '*',
                        suffixStyle: TextStyle(
                            // color: Colors.red,
                            )),
                  ))),
          Card(
              child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter phone number';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        icon: const Icon(Icons.phone),
                        hintText: 'Phone Number ',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        suffixText: '*',
                        suffixStyle: TextStyle(
                          color: Colors.red,
                        )),
                  ))),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                (FlatButton(
                  padding: const EdgeInsets.all(4.0),

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  //elevation: 10.0,
                  onPressed: () {
                    DatePicker.showTimePicker(context,
                        theme: DatePickerTheme(
                          containerHeight: 210.0,
                        ),
                        showTitleActions: true, onConfirm: (time) {
                      print('confirm $time');

                      setState(() {
                        _time =
                            '${time.hour} : ${time.minute} : ${time.second}';
                      });
                    }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 50.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.access_time,
                              color: Colors.grey[600],

                              // size: 18.0,
                              // color: Colors.teal,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              " $_time",
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  color: Colors.white,
                )),
                (FlatButton(
                  padding: const EdgeInsets.all(4.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () {
                    DatePicker.showTimePicker(context,
                        theme: DatePickerTheme(
                          containerHeight: 210.0,
                        ),
                        showTitleActions: true, onConfirm: (time1) {
                      print('confirm $time1');

                      setState(() {
                        _time1 =
                            '${time1.hour} : ${time1.minute} : ${time1.second}';
                      });
                    }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 50.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.access_time,
                              color: Colors.grey[600],
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Text(
                              " $_time1",
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  color: Colors.white,
                )),
              ],
            ),
          ),
          Card(
              key: formKey,
              child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter Address ';
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      name = value;
                    },
                    decoration: const InputDecoration(
                        icon: const Icon(Icons.place),
                        hintText: 'Address ',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        suffixText: '*',
                        suffixStyle: TextStyle(
                          color: Colors.red,
                        )),
                  ))),
          Card(
              child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter landmark';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        icon: const Icon(Icons.place),
                        hintText: 'Landmark ',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        suffixText: '*',
                        suffixStyle: TextStyle(
                          color: Colors.red,
                        )),
                  ))),
                  Card(
              child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter cusine';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        icon: const Icon(Icons.restaurant_menu),
                        hintText: 'Cusines',
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        suffixText: '*',
                        suffixStyle: TextStyle(
                          color: Colors.red,
                        )),
                  ))),
          Card(
            child: ListTile(
              leading: Text(
                "       Delivery Time",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Radio(value: 1, groupValue: 1, onChanged: (valv) {}),
              onTap: () {
                DatePicker.showTimePicker(context,
                    theme: DatePickerTheme(
                      containerHeight: 210.0,
                    ),
                    showTitleActions: true, onConfirm: (time1) {
                  print('confirm $time1');

                  setState(() {
                    _time1 =
                        '${time1.hour} : ${time1.minute} : ${time1.second}';
                  });
                }, currentTime: DateTime.now(), locale: LocaleType.en);
              },
            ),
          ),
          
          // Row(
          //   children: <Widget>[
          //     Flexible(
          //       child: GestureDetector(
          //         onTap: () {},
          //         child: Container(
          //           width: 70,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: Colors.black),
          //           child: Padding(
          //             padding: const EdgeInsets.all(5.0),
          //             child: Text(
          //               "Indian",
          //               style: (TextStyle(color: (Colors.white))),
          //               textAlign: TextAlign.center,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     Flexible(
          //         child: ButtonTheme(
          //             minWidth: 10.0,
          //             height: 30.0,
          //             child: RaisedButton(

          //                 // padding: EdgeInsets.all(.1),
          //                 onPressed: () {
          //                   showDialog(
          //                       context: context,
          //                       builder: (_) => AlertDialog(
          //                             contentPadding: EdgeInsets.all(10),
          //                             title: CheckboxGroup(
          //                               labels: <String>[
          //                                 "Indian",
          //                                 "Chinese",
          //                                 "Italian",
          //                               ],
          //                               onChange: (bool isChecked, String label,
          //                                       int index) =>
          //                                   print(
          //                                       "isChecked: $isChecked   label: $label  index: $index"),
          //                               onSelected: (List selected) =>
          //                                   setState(() {
          //                                 if (selected.length > 1) {
          //                                   selected.removeAt(0);
          //                                   print(
          //                                       'selected length  ${selected.length}');
          //                                 } else {
          //                                   print("only one");
          //                                 }
          //                                 _checked = selected;
          //                               }),
          //                             ),
          //                             //content:
          //                             actions: [
          //                               FlatButton(
          //                                 onPressed: () {
          //                                   Navigator.pop(context);
          //                                 },
          //                                 child: Text(
          //                                   "CANCEL",
          //                                   style: (TextStyle(
          //                                     fontSize: 14,
          //                                     height: 2.0,
          //                                     color: Colors.black,
          //                                   )),
          //                                 ),
          //                               ),
          //                               FlatButton(
          //                                 onPressed: () {
          //                                   Navigator.pop(context);
          //                                 },
          //                                 child: Text(
          //                                   "ADD",
          //                                   style: (TextStyle(
          //                                     fontSize: 14,
          //                                     height: 2.0,
          //                                     color: Colors.black,
          //                                   )),
          //                                 ),
          //                               ),
          //                             ],
          //                             elevation: 1.0,
          //                             backgroundColor: Colors.white,
          //                           ));
          //                 },
          //                 child: new Text(
          //                   "+",
          //                   style: (TextStyle(color: (Colors.white))),
          //                 ),
          //                 color: Colors.black,
          //                 shape: RoundedRectangleBorder(
          //                   borderRadius: new BorderRadius.circular(18.0),
          //                   side: BorderSide(
          //                     color: Colors.black,
          //                     width: 10,
          //                   ),
          //                 )))),
          //   ],
          // ),
          FlatButton(
              child: Text(
                "Save changes",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              color: Colors.green,
              onPressed: () {
                // if (formKey.currentState.validate()) {
                //   return;
                // } else if (formKey.currentState.validate()) {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Save changes ?"),
                        actions: [
                          FlatButton(
                            child: Text("yes"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Restaurant()),
                              );
                            },
                          ),
                          FlatButton(
                            child: Text("discard"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      );
                    });
              }
              //    }
              )
        ],
      ),
      //crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
