
import 'package:AdminApp/pages/createBanneer_page.dart';
import 'package:AdminApp/sidemenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/bannerCards.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share/share.dart';
import 'dart:io' as Io;

class Banners extends StatefulWidget {
  @override
  BannerState createState() => BannerState();
}

class BannerState extends State<Banners> {
  GlobalKey<ScaffoldState> scaf = new GlobalKey<ScaffoldState>();

  //static const popItem = <String>["view", "edit","remove"];
  static const popp = <String>["All", "Approved", "UnApproved"];
  static List<PopupMenuItem<String>> pop = popp
      .map((String val) => PopupMenuItem<String>(
            value: val,
            child: Text(val),
          ))
      .toList();

  static const popfilter = <String>[
    "Restaurant 1",
    "Restaurant 2",
    "Restaurant 3",
    "Restaurant 4"
  ];
  static List<PopupMenuItem<String>> popf = popfilter
      .map((String val) => PopupMenuItem<String>(
            value: val,
            child: ListTile(
              // trailing: Icon(Icons.home),
              title: Text(val),
            ),
          ))
      .toList();

  String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      key: scaf,
      appBar: AppBar(
        title: Text('Banners'),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              Fluttertoast.showToast(
                  msg: "$value - banners displayed",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.blue,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            icon: Icon(Icons.filter_list),
            itemBuilder: (BuildContext context) => popf,
          ),
          PopupMenuButton(
            onSelected: (value) {
              if (value == "All") {
                Fluttertoast.showToast(
                    msg: "All banners displayed",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    fontSize: 16.0);
              }
              if (value == "Approved") {
                Fluttertoast.showToast(
                    msg: "Approved banners displayed",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    fontSize: 16.0);
              }
              if (value == "UnApproved") {
                Fluttertoast.showToast(
                    msg: "UnApproved banners displayed",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    fontSize: 16.0);
              }
            },
            itemBuilder: (BuildContext context) => pop,
          ),
        ],
      ),
      body: new LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
            child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
          child: Column(
            children: [
              BannerCards("assets/offers/offer1.jpg", "Pspice"),
              SizedBox(height: 10),
              BannerCards("assets/offers/offer2.jpg", "Restaurant Restaurnt 1"),
              SizedBox(height: 10),
              BannerCards(
                  "assets/offers/offer3.jpg", "RestauraRestaurRestaurnt 2"),
              SizedBox(height: 10),
              BannerCards("assets/offers/offer4.jpg", "Restaurant 3"),
              SizedBox(height: 10),
              BannerCards("assets/offers/offer1.jpg", "Pspice"),
              SizedBox(height: 10),
              BannerCards("assets/offers/offer2.jpg", "Restaurant Restaurnt 1"),
              SizedBox(height: 10),
              BannerCards(
                  "assets/offers/offer3.jpg", "RestauraRestaurRestaurnt 2"),
              SizedBox(height: 10),
              BannerCards("assets/offers/offer4.jpg", "Restaurant 3"),
              SizedBox(height: 10),
            ],
          ),
        ));
      }),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add_photo_alternate,
            color: Colors.white,
          ),
          backgroundColor: Colors.green,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateBannerPage(),
                ));
          }),
    );
  }
}
