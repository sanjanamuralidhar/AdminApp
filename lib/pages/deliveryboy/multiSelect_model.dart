import 'package:AdminApp/bloc/CheckBox/checkBox_Bloc.dart';
import 'package:AdminApp/mocks/deliverModel.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class MultiModel extends StatefulWidget {
  final DeliveryModel delivery;

  MultiModel({
    this.delivery,
  });

  @override
  _MultiModelState createState() => _MultiModelState();
}

class _MultiModelState extends State<MultiModel> {
  bool isSwitched = false;
  bool isMulti = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckBoxBloc, CheckBoxState>(builder: (context, state) {
      // ignore: close_sinks
      final checkBloc = context.bloc<CheckBoxBloc>();
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
                          Expanded(
                            child: InkWell(
                              child: Icon(checkBloc.getValue()
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank),
                              onTap: () {
                                checkBloc.add(CheckBoxChangeEvent());
                              },
                            ),
                          )
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          //delivery
                          Text(
                            "ID : 45683",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      SizedBox(height: 10.0),

                      SizedBox(height: 10.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              child: Text(
                            "9745278246",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold),
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
                              onPressed: () {},
                            )),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.message,
                                color: Colors.blue,
                              ),
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
    });
  }
}
