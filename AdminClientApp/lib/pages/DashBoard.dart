import 'package:AdminApp/date_time/calendarFrom.dart';
import 'package:AdminApp/date_time/calendarTo.dart';
import 'package:AdminApp/models/dashDumb.dart';
import 'package:AdminApp/models/homelist_model.dart';
import 'package:AdminApp/pages/getReport.dart';
import 'package:AdminApp/pages/orderDetailsCount_page.dart';
import 'package:AdminApp/pages/orderPage.dart';
import 'package:AdminApp/sidemenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_typeahead/flutter_typeahead.dart';

class DashBoard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashBoardState();
  }
}

class DashBoardState extends State<DashBoard> {
  bool _isRestaurant = false;
  TextEditingController _filter = new TextEditingController();
  String _result = "";
  Widget heading = Text(
    'Graeshoppe',
    style: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
      // fontFamily: 'BerkshireSwash'
    ),
  );

  @override
  Widget build(BuildContext context) {
    // if (_filter.value == "") {
    //   setState(() {
    //     _result = "sdfgh";
    //   });
    // }
    return Scaffold(
      appBar: AppBar(
        title: heading,
        // actions: [
        //   Builder(
        //     builder: (context) => IconButton(
        //       icon: Icon(Icons.search),
        //       onPressed: () async {
        //         await showSearch(context: context, delegate: DataSearch());
        //         Scaffold.of(context).showSnackBar(SnackBar(
        //             content: Text(
        //           _result,
        //           style: TextStyle(color: Colors.white),
        //         )));
        //       },
        //     ),
        //   )
        // ],
      ),
      drawer: SideMenu(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    selectionOption(),
                    SizedBox(
                      height: 20,
                    ),
                    _isRestaurant
                        ? FlatButton(
                            textColor: Colors.black,
                            onPressed: () {
                              setState(() {
                                _isRestaurant = false;
                              });
                            },
                            child: Text(
                              _result,
                              style: TextStyle(fontSize: 20),
                            ))
                        : Text(""),
                    SizedBox(
                      height: 0,
                    ),
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
                    orderDetails()
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget orderDetails() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        // Center(
        //     child: _isRestaurant ? selectionOption() : Text("")),
        Container(
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
                    "Cancelled",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      _isRestaurant
                          ? Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                              return OrderPage(_result);
                            }))
                          : Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                              return OrderDetailsCountPage("Pending Orders");
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
                    "Confirmed",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      _isRestaurant
                          ? Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                              return OrderPage(_result);
                            }))
                          : Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                              return OrderDetailsCountPage("Confirmed Orders");
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
                    "Completed",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      _isRestaurant
                          ? Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                              return OrderPage(_result);
                            }))
                          : Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                              return OrderDetailsCountPage("Completed Orders");
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
        ))
      ],
    );
  }

  Widget selectionOption() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TypeAheadField(
            textFieldConfiguration: TextFieldConfiguration(
              cursorColor: Colors.red,
              controller: _filter,
              autofocus: false,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _filter.clear();
                          _isRestaurant = false;
                        });
                      },
                      child: Icon(Icons.clear)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                  hintText: _isRestaurant ? _result : "Enter restaurant name"),
            ),
            suggestionsCallback: (Pattern) async {
              List<HomeRestaurantList> list = restaurantlist;
              var suggetionList = Pattern.isEmpty
                  ? null
                  : list
                      .where((e) =>
                          e.name.toLowerCase().contains(Pattern.toLowerCase()))
                      .toList();

              return suggetionList;
            },
            itemBuilder: (context, suggestion) {
              return ListTile(
                leading: Icon(Icons.restaurant_menu),
                title: Text(suggestion.name),
              );
            },
            onSuggestionSelected: (suggestion) {
              setState(() {
                _result = suggestion.name;
                _filter.clear();
                _isRestaurant = true;
                // _filter.value = suggestion.name;
              });
            }));
  }
}

class DataSearch extends SearchDelegate<String> {
  List<String> restaraunt = [
    "Chicken Hut",
    "Papa Enthis",
    "Mr Wang",
    "Spice india",
    "Romario",
    " Genio",
    "Puppils",
    "Festieva",
  ];
  List<String> recent = [
    "Spice india",
    "Romario",
    " Genio",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    var suggetionList = query.isEmpty
        ? restaraunt
        : restaraunt
            .where((e) => e.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
        itemCount: suggetionList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.restaurant),
            title: RichText(
              text: TextSpan(
                  text: suggetionList[index].substring(0, query.length),
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  children: [
                    TextSpan(
                      text: suggetionList[index].substring(query.length),
                      style: TextStyle(color: Colors.black),
                    )
                  ]),
            ),
            onTap: () {
              close(context, suggetionList[index]);
            },
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var suggetionList = query.isEmpty
        ? restaraunt
        : restaraunt
            .where((e) => e.toLowerCase().contains(query.toLowerCase()))
            .toList();
    // if (suggetionList.isEmpty) {
    //   return ListTile(
    //       leading: Icon(Icons.thumb_down), title: Text("No data found"));
    // }
    return ListView.builder(
        itemCount: suggetionList.length,
        itemBuilder: (context, index) {
          return ListTile(
            // leading: Icon(Icons.restaurant),
            title: RichText(
              text: TextSpan(
                  text: suggetionList[index].substring(0, query.length),
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                  children: [
                    TextSpan(
                      text: suggetionList[index].substring(query.length),
                      style: TextStyle(color: Colors.grey),
                    )
                  ]),
            ),
            onTap: () {
              query = suggetionList[index];
              showResults(context);
            },
          );
        });
  }
}
