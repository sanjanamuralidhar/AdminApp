import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CompletedOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
      Card(
        child: ListTile(
          leading: Text('27/08/20'),
           trailing: Text('28/08/20'),
        ),
      ),
      Row(
        children: [
          Expanded(
                  child: Card(
                child: Padding(
                  // padding: EdgeInsets.all(10),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: <Widget>[],
                      ),
                      SizedBox(height: 13.1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'FEXP-1013',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                height: 1),
                          ),
                          SizedBox(width: 3.0),
                          Row(children: [
                            Container(
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Text(
                                  "DELIVERY",
                                  style: (TextStyle(
                                      color: (Colors.black),
                                      fontWeight: FontWeight.bold)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ]),
                          // SizedBox(width: 80.0),
                          Spacer(),
                          Row(
                            children: [
                              Text("Abhijith",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                  ))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Theme.of(context).iconTheme.color,
                            size: 24.0,
                          ),
                          Row(
                            children: [Text("   29/08/20")],
                          ),
                          // SizedBox(
                          //   width: 150,
                          // ),
                          Spacer(),
                          Row(
                            children: [Text("  Thrissur")],
                          )
                        ],
                      ),
                      Row(children: [
                        Icon(
                          Icons.timer,
                          color: Theme.of(context).iconTheme.color,
                          size: 24.0,
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          children: [Text("   12:35 PM")],
                        ),
                        // SizedBox(
                        //   width: 75,
                        // ),
                        Spacer(),
                        Row(
                          children: [
                            Text("  ORDER NOT PAID",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                ))
                          ],
                        )
                      ]),
                      SizedBox(width: 10),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.info,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'delivery');
                            },
                            iconSize: 25,
                            color: Theme.of(context).iconTheme.color,
                            splashColor: Colors.black,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Row(
          children: [
            Expanded(
                      child: Card(
                  child: Padding(
                      // padding: EdgeInsets.all(10),
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: <Widget>[],
                            ),
                            SizedBox(height: 13.1),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'FEXP-1013',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16,
                                      height: 1),
                                ),
                                SizedBox(width: 3.0),
                                Row(children: [
                                  Container(
                                    width: 90,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Colors.grey),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Text(
                                        "COLLECTION",
                                        style: (TextStyle(
                                            color: (Colors.black),
                                            fontWeight: FontWeight.bold)),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ]),
                                // SizedBox(width: 80.0),
                                Spacer(),
                                Row(
                                  children: [
                                    Text("Abhijith",
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: Theme.of(context).iconTheme.color,
                                  size: 24.0,
                                ),
                                Row(
                                  children: [Text("   29/08/20")],
                                ),
                                // SizedBox(
                                //   width: 150,
                                // ),
                                Spacer(),
                                Row(
                                  children: [Text("  Thrissur")],
                                )
                              ],
                            ),
                            Row(children: [
                              Icon(
                                Icons.timer,
                                color: Theme.of(context).iconTheme.color,
                                size: 24.0,
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Row(
                                children: [Text("   12:35 PM")],
                              ),
                              // SizedBox(
                              //   width: 75,
                              // ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("  ORDER NOT PAID",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
                                      ))
                                ],
                              )
                            ]),
                            SizedBox(width: 100),
                            Column(
                              children: [
                                Text("       Requested for 30/08/20 ,8:20 AM",
                                    style: TextStyle(color: Colors.grey))
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(height: 20),
                                IconButton(
                                  icon: Icon(Icons.print),
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'report');
                                  },
                                  color: Theme.of(context).iconTheme.color,
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Icons.info,
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, 'delivery');
                                      },
                                      iconSize: 25,
                                      color: Theme.of(context).iconTheme.color,
                                      splashColor: Colors.black,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ]))),
            ),
          ],
        )
      ])
    ]));
  }
}
