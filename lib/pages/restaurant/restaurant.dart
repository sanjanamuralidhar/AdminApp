import 'package:AdminApp/bloc/CheckBox/checkBox_Bloc.dart';

import 'package:AdminApp/mocks/restaurant_list.dart';

import 'package:AdminApp/sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'editRestaurant.dart';

// import 'package:slider_button/slider_button.dart';
class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return WebRestaurant();
      } else if (constraints.maxWidth < 800 && constraints.maxWidth > 1200) {
        return WebRestaurant();
      } else {
        return Restaurant();
      }
    });
  }
}

class WebRestaurant extends StatefulWidget {
  @override
  _WebRestaurantState createState() => _WebRestaurantState();
}

class _WebRestaurantState extends State<WebRestaurant> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          title: Text('Restaurants'),
        ),
        body: GridView.builder(
            itemCount: restaurants.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
            itemBuilder: (BuildContext context, int index) {
              RestaurantModel restaurant = restaurants[index];
              return WebRestaurantView(restaurant: restaurant);
            }));
  }
}

class WebRestaurantView extends StatefulWidget {
  final RestaurantModel restaurant;

  const WebRestaurantView({this.restaurant});

  @override
  _WebRestaurantViewState createState() => _WebRestaurantViewState();
}

class _WebRestaurantViewState extends State<WebRestaurantView> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    return Stack(
      children: <Widget>[
        ClipRRect(
          child: Container(
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
            height: 250.0,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(160.0, 45.0, 20.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.restaurant.name,
                        style: TextStyle(
                            fontSize: 21.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[
                      //delivery
                      Text(
                        widget.restaurant.delivery,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[
                      //spend
                      Text(
                        widget.restaurant.spend,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                          //  width: MediaQuery.of(context).size.width * 0.7,
                          // decoration: BoxDecoration(
                          //   color:Colors.lightGreen,
                          //   borderRadius: BorderRadius.circular(20.0)
                          // ),

                          color: Colors.lightGreen,
                          child: Text(
                            "Free Delivery",
                            style: TextStyle(
                              // color: Colors.white,
                              fontSize: 13.0,
                              // fontWeight: FontWeight.bold
                            ),
                          )),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Activate',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Center(
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                              });
                            },
                            activeTrackColor: Colors.lightGreenAccent,
                            activeColor: Colors.green,
                            inactiveThumbColor: Colors.orange[700],
                            inactiveTrackColor: Colors.grey,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditRestaurant()),
                            );
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.blue,
                          ),
                          // ignore: missing_return
                        ),
                      ],
                    ),
                  ),
                  // activate
                ],
              ),
            ),
          ),
        ),
        Positioned(
            left: 15.0,
            top: 40.0,
            bottom: 180.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                width: MediaQuery.of(context).size.width * .1,
                height: MediaQuery.of(context).size.height * .1,
                image: AssetImage(widget.restaurant.imageUrl),
                fit: BoxFit.fitHeight,
              ),
            ))
      ],
    );
  }
}



class Restaurant extends StatefulWidget {
  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          title: Text('Restaurants'),
        ),
        body: ListView.builder(
            itemCount: restaurants.length,
            itemBuilder: (BuildContext context, int index) {
              RestaurantModel restaurant = restaurants[index];
              return BlocProvider(
                  create: (context) => CheckBoxBloc(),
                  child: RestaurantView(
                    restaurant: restaurant,
                  ));
            }));
  }
}

class RestaurantView extends StatefulWidget {
  final RestaurantModel restaurant;

  const RestaurantView({this.restaurant});

  @override
  _RestaurantViewState createState() => _RestaurantViewState();
}

class _RestaurantViewState extends State<RestaurantView> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<ToggleBloc, ToggleState>(builder: (context, state) {
    //   // ignore: close_sinks
    //   final toggleBloc = context.bloc<ToggleBloc>();
    return Stack(
      children: <Widget>[
        ClipRRect(
          child: Container(
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
            height: 150.0,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(140.0, 10.0, 10.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.restaurant.name,
                        style: TextStyle(
                            fontSize: 21.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: <Widget>[
                      //delivery
                      Text(
                        widget.restaurant.delivery,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: <Widget>[
                      //spend
                      Text(
                        widget.restaurant.spend,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(height: 5.0),

                  Row(
                    children: <Widget>[
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                          color: Colors.lightGreen,
                          child: Text(
                            "Free Delivery",
                            style: TextStyle(
                              // color: Colors.white,
                              fontSize: 13.0,
                              // fontWeight: FontWeight.bold
                            ),
                          )),
                    ],
                  ),
                  // SizedBox(height: 5.0),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Activate',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Center(child: activeToggles(isSwitched, context)
                            // restaurantToggles(state.toggles[0], context)

                            ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditRestaurant()),
                            );
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.orange,
                          ),
                          // ignore: missing_return
                        ),
                      ],
                    ),
                  ),
                  // activate
                ],
              ),
            ),
          ),
        ),
        Positioned(
            left: 17.0,
            top: 20.0,
            bottom: 20.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                width: 115.0,
                image: AssetImage(widget.restaurant.imageUrl),
                fit: BoxFit.cover,
              ),
            ))
      ],
    );
    // });
  }

  Widget activeToggles(isSwitched, context) {
    // ignore: close_sinks

    return BlocBuilder<CheckBoxBloc, CheckBoxState>(builder: (context, state) {
      // ignore: close_sinks
      final toggleBloc = BlocProvider.of<CheckBoxBloc>(context);
      return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Transform.scale(
            alignment: Alignment.center,
            scale: 1.3,
            child: Switch(
              onChanged: (val) {
                toggleBloc.add(CheckBoxChangeEvent());
              },
              value: toggleBloc.getValue(),
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
              // hoverColor: Colors.black,
              inactiveThumbColor: Colors.orange,
              inactiveTrackColor: Colors.grey,
            )),
      ]);
    });
  }
}
