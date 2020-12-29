import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

class EditBannerPage extends StatefulWidget {
  final name;
  final bannerImage;
  EditBannerPage(this.name, this.bannerImage);
  @override
  _EditBannerPageState createState() => _EditBannerPageState();
}

class _EditBannerPageState extends State<EditBannerPage> {
  File cropImage;
  bool _cropped = false;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create banner"),
      ),
      body: Container(
        child: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              TextFormField(
                initialValue: widget.name,
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
                "Change banner ",
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
                  : (Container(
                      height: MediaQuery.of(context).size.height / 3,
                      color: Colors.blue,
                      child: Image.asset(widget.bannerImage))),
              SizedBox(
                height: 20,
              ),
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
