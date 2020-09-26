import 'dart:io';

import 'package:AdminApp/bloc/CheckBox/checkBox_Bloc.dart';
import 'package:AdminApp/models/deliverModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:AdminApp/bloc/toggle/toggle_bloc.dart';

import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qrscan/qrscan.dart' as scanner;
class EditDeliveryBoyPage extends StatefulWidget {
  final DeliveryModel delivery;
  EditDeliveryBoyPage(this.delivery);
  @override
  _EditDeliveryBoyPageState createState() => _EditDeliveryBoyPageState();
}

class _EditDeliveryBoyPageState extends State<EditDeliveryBoyPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  File _image;
  File cropImage;
  bool _cropped = false;
  final picker = ImagePicker();
  ToggleBloc toggleBloc;
bool isSwitched = false;

  Widget buildPic() {
    return Center(
      child: Stack(overflow: Overflow.visible, children: <Widget>[
        CircleAvatar(
          //padding: const EdgeInsets.all(8.0),
          radius: 71,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            backgroundImage: AssetImage(widget.delivery.imageUrl),
            radius: 70,
          ),
        ),

        //SizedBox(height: 20, width: 100),
        Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
                icon: Icon(
                  Icons.photo_camera,
                  color: Colors.black87,
                  size: 60,
                ),
                onPressed: () {
                  setState(() {
                    getImage(ImageSource.gallery);
                  });
                }))
      ]),
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


  final _formKey = GlobalKey<FormState>();
  bool isVehicle = false;
  bool isTerms = false;

  Widget build(BuildContext context) {
    // return BlocProvider<ToggleBloc>(
    //               create: (context) => ToggleBloc(),
    //               child: BlocBuilder<ToggleBloc, ToggleState>(
    //                 builder: (context, ToggleState toggleState) {
    return Scaffold(
      appBar: AppBar(title: Text(" Edit Profile ")),
      body:  Container(
        margin: EdgeInsets.all(25),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                    ],
                  ),
                ),
              ),
              buildPic(),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    initialValue: widget.delivery.name,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Name',
                        suffixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100))),
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    validator: (value) {
                      Pattern pattern =
                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                      RegExp regex = new RegExp(pattern);
                      if (value.isEmpty) {
                        return 'Please enter mobile number';
                      }
                      if (!regex.hasMatch(value)) {
                        return 'Please enter valid email';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        suffixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100))),
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Address',
                        suffixIcon: Icon(Icons.location_city),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100))),
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter Primary Number';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'Primary Number',
                        suffixIcon: Icon(Icons.phone_android),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100))),
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter Secondary Number';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'Secondary Number',
                        suffixIcon: Icon(Icons.phone_android),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100))),
                  )),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(

                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'AdharCard Number',
                        suffixIcon:IconButton(
                          icon: Icon(
                            Icons.settings_overscan,
                            color: Colors.blue,
                          ),
                          onPressed:  () async {
                            await scanner.scan();
                          },
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100))),
                  )
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Do you have a vehicle ?'),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:  BlocProvider(
                  create: (context) => CheckBoxBloc(),
                  child: activeToggles(isSwitched, context)
                    )

                // child:  Switch(
                //       value: isVehicle,
                //       onChanged: (val) {
                //         setState(() {
                //           isVehicle = !isVehicle;
                //         });
                //       }),
                  
                )
              ]),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                     Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: BlocProvider(
                  create: (context) => CheckBoxBloc(),
                  child: activeToggles(isSwitched, context))
                  // Switch(
                  //     value: isVehicle,
                  //     onChanged: (val) {
                  //       setState(() {
                  //         isVehicle = !isVehicle;
                  //       });
                  //      }),
                  
                ),

                    Container(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Text(
                            'I agree to the Terms of Service and Privacy Policy')),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    color: Colors.green,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {}
                    },
                    child: Text(
                      'Register',
                      style: Theme.of(context).textTheme.button,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
  Widget activeToggles(isSwitched, context) {
    // ignore: close_sinks

    return BlocBuilder<CheckBoxBloc, CheckBoxState>(builder: (context, state) {
      final toggleBloc = BlocProvider.of<CheckBoxBloc>(context);
      return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Transform.scale(
            alignment: Alignment.center,
            scale: 1.3,
            child: Switch(
              onChanged: (val) {
                toggleBloc.add(CheckBoxChangeEvent());
              },
              value: toggleBloc.getValue(),
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
              // hoverColor: Colors.black,
              inactiveThumbColor: Colors.orange,
              inactiveTrackColor: Colors.grey,
            )),
      ]);
    });
  }
}
