import 'package:AdminApp/models/deliverModel.dart';
import 'package:AdminApp/pages/deliverBoyProfile.dart';
import 'package:AdminApp/pages/deliveryBoy_multSelect.dart';
import 'package:AdminApp/pages/editDeliveryboy.dart';


import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class DeliveryView extends StatefulWidget {
  final DeliveryModel delivery;
  final ColorCallback onColorSelect;

  DeliveryView({this.delivery, this.onColorSelect});

  @override
  DeliveryViewState createState() => DeliveryViewState();
}

class DeliveryViewState extends State<DeliveryView> {
  //final ColorCallback onColorSelect;
  String contact;

  // DeliveryViewState(this.onColorSelect);

  static const popp = <String>["edit", "delete", "share"];
  static List<PopupMenuItem<String>> pop = popp
      .map((String val) => PopupMenuItem<String>(
            value: val,
            child: Text(val),
          ))
      .toList();
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          child: ClipRRect(
            child: Container(
              margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
              height: 230.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(140.0, 20.0, 20.0, 0),
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
                        PopupMenuButton(
                          onSelected: (value) => {
                            if (value == 'delete')
                              {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("deletion contact?"),
                                        actions: [
                                          FlatButton(
                                            child: Text(
                                              "Ok",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          FlatButton(
                                            child: Text(
                                              "cancel",
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      );
                                    })
                              },
                            if (value == 'edit')
                              {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          EditDeliveryBoyPage(widget.delivery),
                                    ))
                              },
                            if (value == 'share') {share(context, contact)}
                          },
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.orange,
                          ),
                          itemBuilder: (BuildContext context) => pop,
                        )
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        //delivery
                        Text(
                          "employer ID : 14187A623",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Joined since : 1/11/2020",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        //spend
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            child: Row(
                          children: [
                            Text(
                              "9745278246",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.star_outline_rounded)
                          ],
                        )),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            child: Text(
                          "8423096724  ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold),
                        )),
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
                    // activate
                  ],
                ),
              ),
            ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BoyProfile(
                widget.delivery,
                isRequest: false,
              );
            }));
          },
          onLongPress: () {
            HapticFeedback.vibrate();
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MultiSelect();
            }));
          },
        ),
        Positioned(
            left: 15.0,
            top: 40.0,
            bottom: 20.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                width: 115.0,
                image: AssetImage(widget.delivery.imageUrl),
                fit: BoxFit.cover,
              ),
            )),
      ],
    );
  }

  void share(BuildContext context, String contact) {
    final RenderBox box = context.findRenderObject();
    final String text = '''Greetings from Graeshoppe !!
  
                      ${widget.delivery.name} - 9745278256
                      MailId - ${widget.delivery.name}@gmail.com
                      
                      download GraeShoppe -https://www.instagram.com/abhijith_madhusoodanan/?hl=en 
                      ''';
    Share.share(text,
        subject: contact,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}

typedef ColorCallback = void Function(bool color);
