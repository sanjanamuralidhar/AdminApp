import 'package:AdminApp/models/customForm.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'dart:io';

// ignore: must_be_immutable
class EditRestaurant extends StatefulWidget {
  bool register;

  EditRestaurant({this.register});

  @override
  State<StatefulWidget> createState() {
    return _EditRestaurantState();
  }
}

class _EditRestaurantState extends State<EditRestaurant> {
  File cropImage;
  // ignore: unused_field
  bool _cropped = false;
  final picker = ImagePicker();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Edit Restaurant'),
        actions: <Widget>[
          // FlatButton(
          //   onPressed: () {
          //    // if (widget.register || _formKey.currentState.validate())
          //       // ignore: unnecessary_statements
          //       (Navigator.pushNamed(context, 'RestaurantPage'));
          //     if (_formKey.currentState.validate())
          //       // ignore: unnecessary_statements
          //       (Navigator.pushNamed(context, 'RestaurantPage'));
          //   },
          //   child: Text(
          //     "Save",
          //     style: TextStyle(fontSize: 15),
          //   ),
          //   shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          // ),
        ],
      ),
      body: ListView(children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Center(
          child: Stack(
            overflow: Overflow.clip,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.orange[700],
                child: ClipOval(
                  child: SizedBox(
                    width: 170.0,
                    height: 170.0,
                    child: Image.asset(
                      'assets/PAPA.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 3,
                  left: 60,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black),
                    child: IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                      onPressed: () => _onButtonPressed(),
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10),
            )
          ],
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Form(key: _formKey, child: MyCustomForm()))
              ]),
            ])
      ]),
    );
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 180,
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.all(8),
                    child: Text(" Restaurant Image ",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red),
                          child: delete(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Remove"),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange),
                          child: new IconButton(
                              icon: new Icon(
                                Icons.photo,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  getImage(ImageSource.gallery);
                                });
                              }),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Gallery")
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.green),
                          child: new IconButton(
                              icon: new Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  getImage(ImageSource.camera);
                                });
                              }),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Camera")
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  Widget delete() {
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = FlatButton(
      child: Text("Remove"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    return IconButton(
      icon: new Icon(
        Icons.delete,
        color: Colors.white,
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            // title: Text("Delete Product"),
            content: Text("Remove Product image?"),
            actions: [
              cancelButton,
              continueButton,
            ],
          ),
          barrierDismissible: false,
        );
      },
    );
  }

  Future<void> getImage(source) async {
    await picker.getImage(source: source).then((_image) async {
      if (_image != null) {
        await ImageCropper.cropImage(
            sourcePath: _image.path,
            aspectRatioPresets: [
              CropAspectRatioPreset.ratio4x3,
            ]).then((crop) {
          this.cropImage = crop;
          setState(() {
            _cropped = true;
          });
        });
      }
    });
  }
}
