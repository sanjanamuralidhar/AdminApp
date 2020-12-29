import 'package:AdminApp/date_time/calendarFrom.dart';
import 'package:AdminApp/date_time/calendarTo.dart';
import 'package:AdminApp/mocks/homelist_list.dart';
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
            // ignore: non_constant_identifier_names
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
