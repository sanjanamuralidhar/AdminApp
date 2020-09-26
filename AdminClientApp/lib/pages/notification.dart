import 'package:AdminApp/models/deliverModel.dart';
import 'package:AdminApp/pages/deliverBoyProfile.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class NotificationP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return WebNotification();
      } else if (constraints.maxWidth < 800 && constraints.maxWidth > 1200) {
        return WebNotification();
      } else {
        return NotificationPage();
      }
    });
  }
}
class WebNotification extends StatefulWidget {
  @override
  _WebNotificationState createState() => _WebNotificationState();
}

class _WebNotificationState extends State<WebNotification> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('Requests'),
      ),
      body: GridView.builder(
          itemCount: deliverBoys.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      (orientation == Orientation.portrait) ? 2 : 3),
          itemBuilder: (BuildContext context, int index) {
            DeliveryModel delivery = deliverBoys[index];
            return WebNotificationList(delivery: delivery);
          }),
    );
  }
}
class WebNotificationList extends StatefulWidget {
  final DeliveryModel delivery;

  const WebNotificationList({this.delivery});
  @override
  _WebNotificationListState createState() => _WebNotificationListState();
}

class _WebNotificationListState extends State<WebNotificationList> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BoyProfile(
                widget.delivery,
                isRequest: true,
              );
            }));
          },
          child: ClipRRect(
            child: Container(
              margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
              height: 250.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(170.0, 50.0, 20.0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.delivery.name,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),

                    Row(
                      children: <Widget>[
                        //delivery
                        Icon(
                          Icons.location_on,
                          color: Colors.blue,
                        ),
                        Text(
                          "palakkad",
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
                      ],
                    ),

                    SizedBox(height: 20.0),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                            '8423096724',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Center(
                              child: IconButton(
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                            ),
                            onPressed: () {
                              launch("tel:+91 9745278256");
                            },
                          )),
                          IconButton(
                            onPressed: () {
                              launch("sms:+91 9745278256");
                            },
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Icon(
                                Icons.message,
                                color: Colors.blue,
                              ),
                            ),
                            // ignore: missing_return
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 25.0,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () => {
                                showAlert(context),
                              },
                              child: Text(
                                "Approve",
                                // style: TextStyle(fontSize: 20),
                              ),
                              color: Colors.lightGreen,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: SizedBox(
                            // width: 20.0,
                            height: 25.0,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () {
                                showAlertDialog(context);
                              },
                              child: Text(
                                "Reject",
                                // style: TextStyle(fontSize: 14),
                              ),
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // activate
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            left: 15.0,
            top: 40.0,
            bottom: 180.0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BoyProfile(
                widget.delivery,
                isRequest: true,
              );
              }));
          },
                          child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  height: 50.0,
                  width: 150.0,
                  image: AssetImage(widget.delivery.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ))
      ],
    );
  }
}
class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Requests'),
      ),
      body: ListView.builder(
          itemCount: deliverBoys.length,
          itemBuilder: (BuildContext context, int index) {
            DeliveryModel delivery = deliverBoys[index];
            return DeliveryNotificationView(delivery: delivery);
          }),
    );
  }
}

class DeliveryNotificationView extends StatefulWidget {
  final DeliveryModel delivery;

  const DeliveryNotificationView({this.delivery});

  @override
  DeliveryNotificationViewState createState() =>
      DeliveryNotificationViewState();
}

class DeliveryNotificationViewState extends State<DeliveryNotificationView> {
  bool isSwitched = false;
  Widget _approval = Text("Approve",
      style: TextStyle(
        color: Colors.red,
      ));
  bool isApproved = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BoyProfile(
                widget.delivery,
                isRequest: true,
              );
            }));
          },
          child: ClipRRect(
            child: Container(
              margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
              height: 160.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
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
                          widget.delivery.name,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),

                    Row(
                      children: <Widget>[
                        //delivery
                        Icon(
                          Icons.location_on,
                          color: Colors.blue,
                        ),
                        Text(
                          "palakkad",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    // SizedBox(height: 5.0),
                    // Row(
                    //   children: <Widget>[
                    //     //spend
                    //   ],
                    // ),

                    SizedBox(height: 5.0),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                            '8423096724',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Center(
                              child: IconButton(
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                            ),
                            onPressed: () {
                              launch("tel:+91 9745278256");
                            },
                          )),
                          IconButton(
                            onPressed: () {
                              launch("sms:+91 9745278256");
                            },
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Icon(
                                Icons.message,
                                color: Colors.blue,
                              ),
                            ),
                            // ignore: missing_return
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: [
                        SizedBox(
                          width: 87.0,
                          height: 25.0,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () => {
                              showAlert(context),
                            },
                            child: Text(
                              "Approve",
                              // style: TextStyle(fontSize: 20),
                            ),
                            color: Colors.lightGreen,
                          ),
                        ),
                        SizedBox(width: 5.0),
                        SizedBox(
                          width: 87.0,
                          height: 25.0,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            child: Text(
                              "Reject",
                              // style: TextStyle(fontSize: 14),
                            ),
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),

                    // activate
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            left: 17.0,
            top: 20.0,
            bottom: 10.0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BoyProfile(
                widget.delivery,
                isRequest: true,
              );
              }));
          },
                          child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  width: 115.0,
                  image: AssetImage(widget.delivery.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ))
      ],
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget cancelButton = FlatButton(
    child: Text('cancel'),
    onPressed: () => Navigator.of(context).pop(),
  );
  Widget okButton = FlatButton(
    child: Text('ok'),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * .6,
              child: TextFormField(
                decoration: InputDecoration(
                    // border: InputBorder.none,
                    labelText: 'Remarks'),
              ),
            ),
          ],
        ),
        // SizedBox(height: 10.0,),
        // Row(
        //   children: <Widget>[

        //     Text('Confirmation'),
        //   ],
        // )
      ],
    ),
    content: Text("Are you sure you want to reject."),
    actions: [okButton, cancelButton],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlert(BuildContext context) {
  Fluttertoast.showToast(
      msg: "          Approved          ",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0);
}
