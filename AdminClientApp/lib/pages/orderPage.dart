import 'package:AdminApp/models/cancelled.dart';
import 'package:AdminApp/models/homelist_model.dart';
import 'package:AdminApp/models/orderCompleted.dart';
import 'package:AdminApp/models/orderConfirmed.dart';
import 'package:AdminApp/models/orderPending.dart';
import 'package:AdminApp/pages/filterPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../completed.dart';

class OrderPage extends StatefulWidget {
  final String name;
  OrderPage(this.name);
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  TextEditingController _filter = TextEditingController();
  bool _isRestaurant = false;
  String _result = "";
  bool isFilter = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.filter_list),
                onPressed: () {
                  setState(() {
                    isFilter = !isFilter;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FilterPage();
                    }));
                  });
                })
          ],
          bottom: TabBar(
            labelColor: (Colors.white),
            tabs: [
              
              Tab(
                text: 'Confirmed',
              ),
              Tab(
                text: 'Completed',
              ),
              Tab(
                text: 'Cancelled',
              ),
            ],
          ),
          title: Text(
            widget.name,
          ),
        ),
        body: TabBarView(
          children: [
            Confirmed(),
            CompletedOrder(),
            CancelledPage(),
          ],
        ),
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
