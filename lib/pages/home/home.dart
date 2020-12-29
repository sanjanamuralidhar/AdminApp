// import 'package:AdminApp/bloc/home_initial/intial_bloc.dart';
// import 'package:AdminApp/bloc/store/store_bloc.dart';
import 'package:AdminApp/mocks/homelist_list.dart';
import 'package:AdminApp/pages/cancelledorder/cancellation_requestScreen.dart';
// import 'package:AdminApp/pages/home/store.dart';
import 'package:AdminApp/pages/orders/orderPage.dart';
import 'package:AdminApp/sidemenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return WebHome();
      } else {
        return HomePage();
      }
    });
  }
}

class WebHome extends StatefulWidget {
  @override
  _WebHomeState createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  TextEditingController editingController = TextEditingController();

  String dropdownValue;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        title: Text('Graeshoppe12345'),
        actions: [
          new IconButton(
              tooltip: "Requests",
              icon: Icon(
                Icons.notifications,
                size: 26,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CancelRequest(),
                    ));
              })
        ],
      ),
      body: ListView(
        physics: ScrollPhysics(),
        children: [
          SizedBox(
            height: 20,
          ),
          selectionOption(),
          Container(
              width: MediaQuery.of(context).size.width,
              //height:MediaQuery.of(context).size.height,
              child: Wrap(children: [
                for (HomeRestaurantList i in restaurantlist)
                  WebHomeListView(restaurantlist: i),
              ])),
        ],
      ),
    );
  }

  Widget selectionOption() {
    // SystemChannels.textInput.invokeMethod('TextInput.hide');
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TypeAheadField(
            textFieldConfiguration: TextFieldConfiguration(
              autofocus: false,
              // enabled: enable,
              onTap: () {
                setState(() {
                  // SystemChannels.textInput.invokeMethod('TextInput.show');
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                hintText: "Search by",
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 20.0),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    hint: Text('Restaurant'),
                    icon: Icon(
                      Icons.arrow_drop_down_circle,
                      color: Colors.orange,
                    ),

                    iconSize: 24,
                    elevation: 100,
                    // style: TextStyle(color: Colors.blue),
                    underline: Container(
                      height: 1,
                      color: Colors.white,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'orderId',
                      'phone',
                      'Restaurant  ',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return OrderPage(suggestion.name);
              }));
            }));
  }
}

class WebHomeListView extends StatefulWidget {
  final HomeRestaurantList restaurantlist;

  const WebHomeListView({Key key, this.restaurantlist}) : super(key: key);

  @override
  _WebHomeListViewState createState() => _WebHomeListViewState();
}

class _WebHomeListViewState extends State<WebHomeListView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return OrderPage(widget.restaurantlist.name);
            }));
          },
          child: ClipRRect(
            child: Container(
              margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
              height: 290.0,
              // MediaQuery.of(context).size.width * .1,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(160.0, 40.0, 20.0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.restaurantlist.name,
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Text(
                          widget.restaurantlist.address1,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: <Widget>[
                        Text(
                          widget.restaurantlist.address2,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        //spend
                        Text(
                          widget.restaurantlist.collectionType,
                          style: TextStyle(
                              // color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        //delivery
                        Text(
                          widget.restaurantlist.delivery,
                          style: TextStyle(
                              // color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Contact',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Center(
                              child: IconButton(
                            icon: Icon(
                              Icons.call,
                              color: Colors.green,
                            ),
                            onPressed: () {
                              launch("tel:+91 9745278256");
                            },
                          )),
                          IconButton(
                            onPressed: () {
                              launch("sms:+91 9745278256");
                            },
                            icon: Icon(
                              Icons.message,
                              color: Colors.blue,
                            ),
                            // ignore: missing_return
                          ),
                        ],
                      ),
                    ),
                    // Row(
                    //   children: <Widget>[
                    //     Material(
                    //       elevation: 1.0,
                    //       borderRadius: BorderRadius.circular(30.0),
                    //       color: Colors.green,
                    //       child: SizedBox(
                    //         width: 150,
                    //         height: 25.0,
                    //         child: FlatButton(
                    //           // hoverColor: Colors.,
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(20.0),
                    //           ),
                    //           onPressed: () {},
                    //           color: Colors.lightGreen,
                    //           child: Text("Free Delivery",
                    //               style: Theme.of(context).textTheme.bodyText2),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            left: 15.0,
            top: 80.0,
            // bottom: 50.0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return OrderPage(widget.restaurantlist.name);
                }));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  width: 150,
                  // 120.0,
                  height: 200,

                  image: AssetImage(widget.restaurantlist.imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            )),
      ],
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController editingController = TextEditingController();
  Widget heading = Text(
    'Graeshoppe',
    style: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
      // fontFamily: 'BerkshireSwash'
    ),
  );

  String dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        title: heading,
        actions: [],
      ),
      body: ListView(
        physics: ScrollPhysics(),
        children: [
          SizedBox(
            height: 20,
          ),
          selectionOption(),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: restaurantlist.length,
                itemBuilder: (BuildContext context, int index) {
                  HomeRestaurantList restaurant = restaurantlist[index];
                  return HomeListView(restaurantlist: restaurant);
                }),
          ),
        ],
      ),
    );
  }

  Widget selectionOption() {
    // SystemChannels.textInput.invokeMethod('TextInput.hide');
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TypeAheadField(
            textFieldConfiguration: TextFieldConfiguration(
              autofocus: false,
              // enabled: enable,
              onTap: () {
                setState(() {
                  // SystemChannels.textInput.invokeMethod('TextInput.show');
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                hintText: "Search by ",
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 20.0),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    hint: Text('Restaurant'),
                    icon: Icon(
                      Icons.arrow_drop_down_circle,
                      color: Colors.orange,
                    ),

                    iconSize: 24,
                    elevation: 100,
                    // style: TextStyle(color: Colors.blue),
                    underline: Container(
                      height: 1,
                      color: Colors.white,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'orderId',
                      'phone',
                      'Restaurant  ',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return OrderPage(suggestion.name);
              }));
            }));
  }
}

// class StoreHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final IntialBloc _initialBloc = BlocProvider.of<IntialBloc>(context);
//     final StoreBloc _storeBloc = BlocProvider.of<StoreBloc>(context);
//     _initialBloc.add(GetIntialdataEvent());
//     _storeBloc.add(GetStoreStatusEvent(status: 'OPEN'));

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Tickets'),
//         actions: [
//           PopupMenuButton(
//             icon: Icon(Icons.filter_list),
//             itemBuilder: (context) {
//               return _initialBloc.storeStatus
//                   .map((e) => PopupMenuItem(value: e, child: Text(e)))
//                   .toList();
//             },
//             onSelected: (value) {
//               _storeBloc.add(GetStoreStatusEvent(status: value));
//             },
//           ),
//           IconButton(
//               icon: Icon(Icons.settings),
//               onPressed: () {
//                 showMenu(
//                     context: context,
//                     position: RelativeRect.fromLTRB(30, 100, 0, 0),
//                     items: [
//                       PopupMenuItem(
//                           child: FlatButton.icon(
//                               onPressed: () {
//                                 Get.back();
//                               },
//                               icon: Icon(Icons.person),
//                               label: Text('My Profile'))),
//                       PopupMenuItem(
//                           child: FlatButton.icon(
//                               // onPressed: () {
//                               //   _authBloc.add(LogoutAuthEvent(LoginVM()));
//                               //   Get.back();
//                               // },
//                               icon: Icon(Icons.exit_to_app),
//                               label: Text('Log out')))
//                     ]);
//               })
//         ],
//       ),
//       body:BlocBuilder<StoreBloc, StoreState>(
//               builder: (context, state) {
//                 return state is StoresState
//                     ? ListView.builder(
//                         itemBuilder: (context, index) {
//                           return StoreCard(
//                             store: state.stores[index],
//                           );
//                         },
//                         itemCount: state.stores.length,
//                       )
//                     : Container();
//               },
//             ),
//     );

//   }
// }

class HomeListView extends StatefulWidget {
  final HomeRestaurantList restaurantlist;

  const HomeListView({Key key, this.restaurantlist}) : super(key: key);

  @override
  _HomeListViewState createState() => _HomeListViewState();
}

class _HomeListViewState extends State<HomeListView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return OrderPage(widget.restaurantlist.name);
            }));
          },
          child: ClipRRect(
            child: Container(
              margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
              height: 170.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(150.0, 10.0, 10.0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.restaurantlist.name,
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: <Widget>[
                        Text(
                          widget.restaurantlist.address1,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          widget.restaurantlist.address2,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: <Widget>[
                        //spend
                        Text(
                          widget.restaurantlist.collectionType,
                          style: TextStyle(
                              // color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: <Widget>[
                        //delivery
                        Text(
                          widget.restaurantlist.delivery,
                          style: TextStyle(
                              // color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    // SizedBox(height: 5.0),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Contact',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Center(
                              child: IconButton(
                            icon: Icon(
                              Icons.call,
                              color: Colors.green,
                            ),
                            onPressed: () {
                              launch("tel:+91 9745278256");
                            },
                          )),
                          IconButton(
                            onPressed: () {
                              launch("sms:+91 9745278256");
                            },
                            icon: Icon(
                              Icons.message,
                              color: Colors.blue,
                            ),
                            // ignore: missing_return
                          ),
                        ],
                      ),
                    ),
                    // Row(
                    //   children: <Widget>[
                    //     Material(
                    //       elevation: 1.0,
                    //       borderRadius: BorderRadius.circular(30.0),
                    //       color: Colors.green,
                    //       child: SizedBox(
                    //         width: MediaQuery.of(context).size.width * .4,
                    //         height: 25.0,
                    //         child: FlatButton(
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(20.0),
                    //           ),
                    //           onPressed: () {},
                    //           color: Colors.lightGreen,
                    //           child: Text("Free Delivery",
                    //               style: Theme.of(context).textTheme.bodyText2),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            left: 20.0,
            top: 20.0,
            bottom: 20.0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return OrderPage(widget.restaurantlist.name);
                }));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  width: 120.0,
                  // height: 130.0,
                  image: AssetImage(widget.restaurantlist.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            )),
      ],
    );
  }
}
