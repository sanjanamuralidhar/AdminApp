import 'package:AdminApp/pages/banner/bannerPage.dart';
import 'package:AdminApp/pages/cancelledorder/cancellation_Route.dart';

import 'package:AdminApp/pages/deliveryboy/deliveryBoy_page.dart';

import 'package:AdminApp/pages/home/homeTab.dart';
import 'package:AdminApp/user/adminProfilePage.dart';

import 'package:AdminApp/user/login.dart';
import 'package:AdminApp/user/resetpassword.dart';

import 'package:flutter/material.dart';

import 'pages/about.dart';
import 'pages/feedback/feedbackTab.dart';
import 'pages/offer/offers.dart';
import 'pages/report/report.dart';
import 'pages/restaurant/restaurant.dart';
import 'pages/terms/terms.dart';

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
            ],
          ),
        ),
        ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.orange,
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
            hoverColor: Colors.red,
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.people,
                  color: Colors.orange,
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
                  color: Colors.orange,
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
                  color: Colors.orange,
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
                  color: Colors.orange,
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
                  color: Colors.orange,
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
                  color: Colors.orange,
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
                  color: Colors.orange,
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
                  color: Colors.orange,
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
                  color: Colors.orange,
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
                    builder: (context) => TermsView(),
                  ));
            }),
        ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.info,
                  color: Colors.orange,
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
                  color: Colors.orange,
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
