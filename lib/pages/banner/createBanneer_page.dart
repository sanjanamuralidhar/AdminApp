import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

class CreateBannerPage extends StatefulWidget {
  @override
  _CreateBannerPageState createState() => _CreateBannerPageState();
}

class _CreateBannerPageState extends State<CreateBannerPage> {
  File cropImage;
  bool _cropped = false;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create banner"),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Enter restataunt Name",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    //fillColor: Colors.green
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Select banner ",
                  style: TextStyle(fontSize: 20),
                ),
                IconButton(
                  // iconSize: 50,
                  icon: Icon(Icons.perm_media),
                  onPressed: () {
                    getImage(ImageSource.gallery);
                  },
                  tooltip: "Gallery",
                ),
                IconButton(
                  // iconSize: 50,
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {
                    getImage(ImageSource.camera);
                  },
                  tooltip: "use camera",
                ),
                _cropped
                    ? (Container(
                        height: MediaQuery.of(context).size.height / 3,
                        color: Colors.blue,
                        child: Image.file(cropImage)))
                    : (Container(child: Image.asset('assets/intro/ban.png'))),
                Row(
                  children: [
                    Expanded(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(fontSize: 20),
                        ),
                        color: Colors.lightGreen,
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(fontSize: 20),
                        ),
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
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
