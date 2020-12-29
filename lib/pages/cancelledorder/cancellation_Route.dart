
import 'package:AdminApp/sidemenu.dart';
import 'package:flutter/material.dart';

import 'cancelled.dart';
import 'completed.dart';


class CancellationRoute extends StatefulWidget {
  
  @override
  _CancellationRouteState createState() => _CancellationRouteState();
}

class _CancellationRouteState extends State<CancellationRoute>
    with SingleTickerProviderStateMixin {
  TabController controller;

  int selected = 0;
  bool isCompleted = false;
  String statusName = 'Requested';

  // Widget checkSegment() {
  //   if (selected == 0){
  //   isCompleted=false;
  //   statusName= 'Requested';
  //     return Expanded(flex: 10, child: Cancelled());
     
  //   }
  //   else if (selected == 1){
  //   isCompleted=true;
  //   statusName = 'Completed';
  //     return Expanded(flex: 10, child: Completed());

  //   }
  //   else
  //     return Container(
  //       child: Text("Change this to info List"),
  //     ); //InfoList()
  // }
Widget appBarTitle = new Text('Cancellation');
  Icon actionIcon = new Icon(Icons.search);
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this, initialIndex: 0);
  }

  Widget build(BuildContext context) {

       return DefaultTabController(
         length: 2,
                child: Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        title: appBarTitle,
        actions: [
          new IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(() {
                if (this.actionIcon.icon == Icons.search) {
                  this.actionIcon = new Icon(Icons.close);
                  this.appBarTitle = new TextField(
                    style: new TextStyle(
                      color: Colors.white,
                    ),
                    decoration: new InputDecoration(
                        prefixIcon: new Icon(Icons.search, color: Colors.white),
                        hintText: "Search...",
                        hintStyle: new TextStyle(color: Colors.white)),
                  );
                } else {
                  this.actionIcon = new Icon(Icons.search);
                  this.appBarTitle = new Text('Cancellation');
                }
              });
            },
          ),
          // buildMulti()
        ],
          bottom: 
          TabBar(
              labelColor: (Colors.white),
              tabs: [
                Tab(
                  text: 'CANCELLED',
                ),
                Tab(
                  text: 'COMPLETED',
                ),
              ],
              
            ),
      
      ),
      body: TabBarView(
            children: [
              CancelledPage(),
              CompletedPage(),
               
            ],
          ),
      // body: Column(
      //   children: <Widget>[
      //     Expanded(
      //       flex: 1,
      //       child: DefaultTabController(
      //         length: 2,
      //         initialIndex: 0,
      //         child: TabBar(
      //           unselectedLabelColor: Colors.grey[700],
      //           indicatorColor: Colors.blue,
      //           labelColor: Colors.blue,
      //           onTap: (value) {
      //             setState(() {
      //               print(value);
      //               selected = value;
      //             });
      //           },
      //           tabs: <Widget>[
      //             Tab(
      //                 child: Text(
      //               'CANCELLED',
      //               style: TextStyle(
      //                 fontSize: 12,
      //               ),
      //             )),
      //             Tab(
      //                 child: Text(
      //               'COMPLETED',
      //               style: TextStyle(
      //                 fontSize: 12,
      //               ),
      //             )),
      //           ],
      //         ),
      //       ),
      //     ),
      //     checkSegment(),
      //   ],
      // ),
    ),
       );
  }
}
