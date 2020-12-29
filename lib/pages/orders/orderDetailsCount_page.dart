import 'package:AdminApp/mocks/homelist_list.dart';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'filterPage.dart';
import 'orderPage.dart';

class OrderDetailsCountPage extends StatefulWidget {
  final String name;
  OrderDetailsCountPage(this.name);
  @override
  _OrderDetailsCountPageState createState() => _OrderDetailsCountPageState();
}

class _OrderDetailsCountPageState extends State<OrderDetailsCountPage> {
  TextEditingController _filter = TextEditingController();
  bool _isRestaurant = false;
  String _result = "";
  @override
  Widget build(BuildContext context) {
    Widget appBarTitle = Text(widget.name);
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: appBarTitle,
        actions: [
          IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: () {
                setState(() {
                  // isFilter = !isFilter;
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FilterPage();
                  }));
                });
              })
        ],
      ),
      body: ListView(
        children: [
          selectionOption(),
          Container(
            child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: restaurantlist.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        (orientation == Orientation.portrait) ? 2 : 3),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return OrderPage(restaurantlist[index].name);
                      }));
                    },
                    child: Card(
                      child: GridTile(
                        child: Stack(
                          children: [
                            Image.asset(
                              restaurantlist[index].imageUrl,
                              fit: BoxFit.fill,
                            ),
                            new Positioned(
                              top: 10,
                              right: 10,
                              child: new Container(
                                // padding: EdgeInsets.all(1),
                                decoration: new BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                constraints: BoxConstraints(
                                  minWidth: 25,
                                  minHeight: 25,
                                ),
                                child: new Text(
                                  "$index",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                        footer: Container(
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            restaurantlist[index].name,
                            style: TextStyle(fontSize: 15),
                          )),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget selectionOption() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
