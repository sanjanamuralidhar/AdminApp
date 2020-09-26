import 'package:AdminApp/pages/dashBoard.dart';
import 'package:AdminApp/sidemenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyHome> {
  int _selectedTab = 0;
  final _pageOptions = [
    Home(),
    DashBoard(),
  ];
  Icon actionIcon = new Icon(
    Icons.search,
    color: Colors.black,
  );
  final key = new GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = new TextEditingController();
  bool isSearchClicked = false;
  Widget heading = Text(
    'Graeshoppe',
    style: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
      // fontFamily: 'BerkshireSwash'
    ),
  );
  final TextEditingController _filter = new TextEditingController();
  // TextEditingController editingController = TextEditingController();
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
            icon: Icon(Icons.assignment),
            title: Text('Dashboard'),
          ),
        ],
      ),
      // appBar: AppBar(
      //   title:
      // isSearchClicked
      // ? Container(
      //     padding: EdgeInsets.only(bottom: 2, right: 5, top: 5),
      //     constraints: BoxConstraints(minHeight: 40, maxHeight: 40),
      //     width: 220,
      //     child: CupertinoTextField(
      //       controller: _filter,
      //       keyboardType: TextInputType.text,
      //       placeholder: "Search..",
      //       placeholderStyle: TextStyle(
      //         color: Color(0xffC4C6CC),
      //         fontSize: 14.0,
      //         // fontFamily: 'Brutal',
      //       ),
      //       prefix: Padding(
      //         padding: const EdgeInsets.fromLTRB(9.0, 6.0, 9.0, 6.0),
      //         child: Icon(
      //           Icons.search,
      //           color: Colors.black,
      //         ),
      //       ),
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(8.0),
      //         color: Colors.white,
      //       ),
      //     ),
      //   )
      // :
      // heading,
      // background: Image.asset("assets/icon.png"),
      // ),
      // actions: <Widget>[
      //   new IconButton(
      //       icon: actionIcon,
      //       onPressed: () {
      //         setState(() {
      //           isSearchClicked = !isSearchClicked;
      //           if (isSearchClicked) {
      //             this.actionIcon = new Icon(Icons.close);
      //           } else {
      //             this.actionIcon = new Icon(Icons.search);
      //           }
      //         });
      //       }),
      // ],
      // ),
      body: _pageOptions[_selectedTab],
      // body: NestedScrollView(
      //   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      //     return <Widget>[
      //       SliverAppBar(
      //         // expandedHeight: 80.0,
      //         floating: false,
      //         pinned: true,
      //         // flexibleSpace: FlexibleSpaceBar(
      //         //   collapseMode: CollapseMode.parallax,
      //         //   centerTitle: true,
      //         title: isSearchClicked
      //             ? Container(
      //                 padding: EdgeInsets.only(bottom: 2, right: 5, top: 5),
      //                 constraints:
      //                     BoxConstraints(minHeight: 40, maxHeight: 40),
      //                 width: 220,
      //                 child: CupertinoTextField(
      //                   controller: _filter,
      //                   keyboardType: TextInputType.text,
      //                   placeholder: "Search..",
      //                   placeholderStyle: TextStyle(
      //                     color: Color(0xffC4C6CC),
      //                     fontSize: 14.0,
      //                     // fontFamily: 'Brutal',
      //                   ),
      //                   prefix: Padding(
      //                     padding:
      //                         const EdgeInsets.fromLTRB(9.0, 6.0, 9.0, 6.0),
      //                     child: Icon(
      //                       Icons.search,
      //                       color: Colors.black,
      //                     ),
      //                   ),
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(8.0),
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //               )
      //             : heading,
      //         // background: Image.asset("assets/icon.png"),
      //         // ),
      //         actions: <Widget>[
      //           new IconButton(
      //               icon: actionIcon,
      //               onPressed: () {
      //                 setState(() {
      //                   isSearchClicked = !isSearchClicked;
      //                   if (isSearchClicked) {
      //                     this.actionIcon = new Icon(Icons.close);
      //                   } else {
      //                     this.actionIcon = new Icon(Icons.search);
      //                   }
      //                 });
      //               }),
      //         ],
      //       ),
      //     ];
      //   },
      //   body: _pageOptions[_selectedTab],
      // )
    ));
  }
}
