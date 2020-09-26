import 'package:AdminApp/pages/adminProfilePage.dart';
import 'package:AdminApp/pages/dashBoard.dart';
import 'package:AdminApp/pages/deliveryBoy_page.dart';
import 'package:AdminApp/pages/feedbackTab.dart';
import 'package:AdminApp/pages/homeTab.dart';
import 'package:AdminApp/pages/report.dart';
import 'package:AdminApp/pages/resetpassword.dart';
import 'package:AdminApp/pages/restaurant.dart';
import 'package:AdminApp/pages/terms.dart';

import 'package:flutter/material.dart';

import 'pages/about.dart';
import 'pages/bannerPage.dart';
import 'pages/cancellation_Route.dart';
import 'pages/feedback.dart';
import 'pages/home.dart';
import 'pages/login.dart';
import 'pages/offers.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Colors.redAccent,
            Colors.orange,
          ])),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Graeshoppe',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontFamily: 'BerkshireSwash'),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              buildPic(context),
              // Text(
              //   'shoppe',
              //   style: TextStyle(
              //       fontSize: 30.0,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.redAccent,
              //       fontFamily: 'BerkshireSwash'),
              // ),
            ],
          ),
          // Image.asset('assets/favicon.png')
        ),
        ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Home',
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHome(),
                  ));
            }),
        ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.people,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Delivery Team',
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Delivery(),
                  ));
            }),
        ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.block,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Cancelled',
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CancellationRoute(),
                  ));
            }),
        ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.print,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Report',
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Report(),
                  ));
            }),
        ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.restaurant,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Activate Restaurant',
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RestaurantPage(),
                  ));
            }),
        ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.wallpaper,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Banners',
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Banners(),
                  ));
            }),
        ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.cached,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'ResetPassword',
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResetPassword(),
                  ));
            }),
        ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.question_answer,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'FeedBack',
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FeedbackTab(),
                  ));
            }),
        ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.receipt,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Offers',
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Offers(),
                  ));
            }),
        ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.security,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Terms & Conditions',
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Terms(),
                  ));
            }),
        ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.info,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'About',
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutPage(),
                  ));
            }),
        ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.power_settings_new,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Log Out',
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ));
            }),
      ],
    ));
  }

  Widget buildPic(context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AdminProfilePage(),
            ));
      },
      child: Center(
        child: Stack(overflow: Overflow.visible, children: <Widget>[
          CircleAvatar(
            //padding: const EdgeInsets.all(8.0),
            radius: 41,
            backgroundColor: Colors.orange,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: AssetImage("assets/deliverboy/girl3.jpg"),
              radius: 40,
            ),
          ),

          //SizedBox(height: 20, width: 100),
        ]),
      ),
    );
  }
}
