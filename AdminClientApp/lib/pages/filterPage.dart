import 'package:AdminApp/date_time/calendarFrom.dart';
import 'package:AdminApp/date_time/calendarTo.dart';
import 'package:AdminApp/models/homelist_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class FilterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FilterPageState();
  }
}

class FilterPageState extends State<FilterPage> {
  bool _isRestaurant = false;
  TextEditingController _filter = new TextEditingController();
  String _result = "";
  Widget heading = Text(
    'Select Options',
    style: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: heading,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Container(
                width: MediaQuery.of(context).size.width,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(child: CalendarFrom()),
                        Expanded(child: CalendarTo()),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    Expanded(child: ListView(children: [],)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlatButton(
                          //color: Colors.black,
                          onPressed: () {},
                          child: Text(
                            "RESET",
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          //color: Colors.black,
                          onPressed: () {},
                          child: Text(
                            "APPLY",
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget selectionOption() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TypeAheadField(
            textFieldConfiguration: TextFieldConfiguration(
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
                _filter.value = suggestion.name;
              });
            }));
  }
}

// class DataSearch extends SearchDelegate<String> {
//   List<String> restaraunt = [
//     "Chicken Hut",
//     "Papa Enthis",
//     "Mr Wang",
//     "Spice india",
//     "Romario",
//     " Genio",
//     "Puppils",
//     "Festieva",
//   ];
//   List<String> recent = [
//     "Spice india",
//     "Romario",
//     " Genio",
//   ];

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = "";
//         },
//       )
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: AnimatedIcon(
//           icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
//       onPressed: () {
//         close(context, null);
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     var suggetionList = query.isEmpty
//         ? restaraunt
//         : restaraunt
//             .where((e) => e.toLowerCase().contains(query.toLowerCase()))
//             .toList();

//     return ListView.builder(
//         itemCount: suggetionList.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             leading: Icon(Icons.restaurant),
//             title: RichText(
//               text: TextSpan(
//                   text: suggetionList[index].substring(0, query.length),
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.black),
//                   children: [
//                     TextSpan(
//                       text: suggetionList[index].substring(query.length),
//                       style: TextStyle(color: Colors.black),
//                     )
//                   ]),
//             ),
//             onTap: () {
//               close(context, suggetionList[index]);
//             },
//           );
//         });
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     var suggetionList = query.isEmpty
//         ? restaraunt
//         : restaraunt
//             .where((e) => e.toLowerCase().contains(query.toLowerCase()))
//             .toList();

//     return ListView.builder(
//         itemCount: suggetionList.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             // leading: Icon(Icons.restaurant),
//             title: RichText(
//               text: TextSpan(
//                   text: suggetionList[index].substring(0, query.length),
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.grey),
//                   children: [
//                     TextSpan(
//                       text: suggetionList[index].substring(query.length),
//                       style: TextStyle(color: Colors.grey),
//                     )
//                   ]),
//             ),
//             onTap: () {
//               query = suggetionList[index];
//               showResults(context);
//             },
//           );
//         });
//   }
// }

/*
class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool _isRestaurant = false;
  TextEditingController _filter = new TextEditingController();
  String _result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Options"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 20), child: selectionOption()),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(child: CalendarFrom()),
                Expanded(child: CalendarTo()),
              ],
            ),
            Expanded(child: ListView()),
            Container(
              height: 80,
              // color: Colors.red,
              child: Row(
                children: [
                  Expanded(
                      child: FlatButton(
                        //color: Colors.black,
                        onPressed: () {},
                        child: Text(
                          "Reset",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      )),
                  Expanded(
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Apply",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget selectionOption() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TypeAheadField(
            textFieldConfiguration: TextFieldConfiguration(
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
                _filter.value = suggestion.name;
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
   */
