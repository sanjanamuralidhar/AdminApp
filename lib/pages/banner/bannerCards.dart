
import 'package:esys_flutter_share/esys_flutter_share.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:photo_view/photo_view.dart';

import 'editBanner_page.dart';

class BannerCards extends StatefulWidget {
  final String url;
  final String name;

  BannerCards(this.url, this.name);

  @override
  _BannerCardsState createState() => _BannerCardsState();
}

class _BannerCardsState extends State<BannerCards> {
  static const popp = <String>["edit", "remove", "share"];
  static List<PopupMenuItem<String>> pop = popp
      .map((String val) => PopupMenuItem<String>(
            value: val,
            child: Text(val),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      child: Container(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .03, top: 5, bottom: 5),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      // ignore: non_constant_identifier_names
                      builder: (BuildContext) {
                        return AlertDialog(
                            content: Container(
                                height: MediaQuery.of(context).size.height / 3,
                                child: PhotoView(
                                  imageProvider: AssetImage(widget.url),
                                )));
                      });
                },
                child: Image.asset(
                  widget.url,
                  height: MediaQuery.of(context).size.width * .35,
                  width: MediaQuery.of(context).size.width * .3,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .4,
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    widget.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 80.0,
                        height: 25.0,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () => {
                            showAlert(context),
                          },
                          child: Text(
                            "Approve",
                            style: TextStyle(fontSize: 12),
                          ),
                          color: Colors.lightGreen,
                        ),
                      ),
                      SizedBox(width: 3.0),
                      SizedBox(
                        width: 80.0,
                        height: 25.0,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {
                            showAlertDialog(context);
                          },
                          child: Text(
                            "Reject",
                            style: TextStyle(fontSize: 13),
                          ),
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
                alignment: Alignment.topRight,
                child: PopupMenuButton(
                  onSelected: (value) => {
                    if (value == 'remove')
                      {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Delete the Banner ?"),
                                actions: [
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "ok",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "cancel",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  )
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
                                  EditBannerPage(widget.name, widget.url),
                            ))
                      },
                    if (value == 'share') {share(widget.url)}
                  },
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                  itemBuilder: (BuildContext context) => pop,
                ))
          ],
        ),
      ),
    ));
  }

  void share(String image) async {
    final ByteData box = await rootBundle.load(image);
    await Share.file(
        "Banner", "${widget.name}.jpg", box.buffer.asUint8List(), 'image/png',
        text:
            "download GraeShoppe from https://www.instagram.com/abhijith_plz.quiet.___/");
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
