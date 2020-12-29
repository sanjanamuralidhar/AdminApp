import 'package:flutter/material.dart';
import 'package:openapi/model/store.dart';
import 'package:url_launcher/url_launcher.dart';

// android:hardwareAccelerated="true"
class StoreCard extends StatelessWidget {
  final Store store;
  StoreCard({this.store});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          // onTap: () {
          //   Navigator.push(context, MaterialPageRoute(builder: (context) {
          //     return OrderPage(widget.restaurantlist.name);
          //   }));
          // },
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
                          store.name,
                          // widget.restaurantlist.name,
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: <Widget>[
                        Text(
                          store.locationName,
                          // widget.restaurantlist.address1,
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
                          store.location,
                          // widget.restaurantlist.address2,
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
                          store.storeTypes.toString(),
                          // widget.restaurantlist.collectionType,
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
                          store.openingTime.toString(),
                          // widget.restaurantlist.delivery,
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
              // onTap: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     return OrderPage(widget.restaurantlist.name);
              //   }));
              // },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  width: 120.0,
                  // height: 130.0,
                  image: AssetImage(
                    store.imageLink
                    // widget.restaurantlist.imageUrl
                    ),
                  fit: BoxFit.cover,
                ),
              ),
            )),
      ],
    );
  }
}