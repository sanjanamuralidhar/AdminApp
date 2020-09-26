import 'package:AdminApp/pages/feedback.dart';
import 'package:flutter/material.dart';

class FeedbackTab extends StatefulWidget {
  @override
  _FeedbackTabState createState() => _FeedbackTabState();
}

class _FeedbackTabState extends State<FeedbackTab> {
   int _selectedTab = 0;
  final _pageOptions = [
    FeedBackPage(),
    FeedBackPage(),
  ];
  Icon actionIcon = new Icon(
    Icons.search,
    color: Colors.black,
  );
  final key = new GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = new TextEditingController();
  bool isSearchClicked = false;
  // Widget heading = Text(
  //   'FeedBacks',
  //   style: TextStyle(
  //     fontSize: 22.0,
  //     fontWeight: FontWeight.bold,
  //     color: Colors.black87,
  //     // fontFamily: 'BerkshireSwash'
  //   ),
  // );
  final TextEditingController _filter = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      // drawer: SideMenu(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory),
            title: Text('Restaurants'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Delivery Boys'),
          ),
        ],
      ),
      body: _pageOptions[_selectedTab],
    
    ));
  }
}