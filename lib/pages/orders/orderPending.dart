import 'package:flutter/material.dart';

class PendingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return WebPending();
      } else if (constraints.maxWidth < 800 && constraints.maxWidth > 1200) {
        return TabPending();
      } else {
        return Pending();
      }
    });
  }
}

class WebPending extends StatefulWidget {
  @override
  _WebPendingState createState() => _WebPendingState();
}

class _WebPendingState extends State<WebPending> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            Row(
              // mainAxisAlignment: ,
              children: [
                Expanded(
                  child: Card(
                    child: ListTile(
                      leading: Text('27/08/20'),
                      trailing: Text('28/08/20'),
                    ),
                  ),
                ),
              ],
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
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'FEXP-1013',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16,
                                          height: 1),
                                    ),
                                    SizedBox(width: 10.0),
                                    Row(
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                        children: [
                                          Container(
                                            width: 60,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                color: Colors.grey),
                                            child: Text(
                                              "DELIVERY",
                                              style: (TextStyle(
                                                  color: (Colors.black),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ]),
                                    Spacer(),
                                    // SizedBox(width: 80.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(" Abhijith",
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
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      color: Theme.of(context).iconTheme.color,
                                      size: 24.0,
                                    ),

                                    Row(
                                      children: [
                                        Text("   29/08/20"),
                                      ],
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
                                Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        color:
                                            Theme.of(context).iconTheme.color,
                                        //  color: Colors.redAccent,
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
                                                color: Theme.of(context)
                                                    .iconTheme
                                                    .color,
                                              ))
                                        ],
                                      )
                                    ]),
                                SizedBox(width: 100),
                                Column(
                                  children: [],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(''),
                                    Spacer(),
                                    Row(
                                      children: [
                                        new Container(
                                            padding: const EdgeInsets.only(
                                                left: 210.0, top: 10.0),
                                            child: new RaisedButton(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                child: Text('ACCEPT',
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                                onPressed: () {} //{
                                                //  Navigator.pushNamed(context, 'confirmed');
                                                //},
                                                )),
                                      ],
                                    ),
                                  ],
                                ),
                              ]))),
                ),
              ],
            )
          ])),
    );
  }
}

class TabPending extends StatefulWidget {
  @override
  _TabPendingState createState() => _TabPendingState();
}

class _TabPendingState extends State<TabPending> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Pending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            Row(
              // mainAxisAlignment: ,
              children: [
                Expanded(
                  child: Card(
                    child: ListTile(
                      leading: Text('27/08/20'),
                      trailing: Text('28/08/20'),
                    ),
                  ),
                ),
              ],
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
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'FEXP-1013',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16,
                                          height: 1),
                                    ),
                                    SizedBox(width: 10.0),
                                    Row(
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                        children: [
                                          Container(
                                            width: 60,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                color: Colors.grey),
                                            child: Text(
                                              "DELIVERY",
                                              style: (TextStyle(
                                                  color: (Colors.black),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ]),
                                    Spacer(),
                                    // SizedBox(width: 80.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(" Abhijith",
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
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      color: Theme.of(context).iconTheme.color,
                                      size: 24.0,
                                    ),

                                    Row(
                                      children: [
                                        Text("   29/08/20"),
                                      ],
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
                                Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        color:
                                            Theme.of(context).iconTheme.color,
                                        //  color: Colors.redAccent,
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
                                                color: Theme.of(context)
                                                    .iconTheme
                                                    .color,
                                              ))
                                        ],
                                      )
                                    ]),
                                SizedBox(width: 100),
                                Column(
                                  children: [],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(''),
                                    Spacer(),
                                    Row(
                                      children: [
                                        // new Container(
                                        //     padding: const EdgeInsets.only(
                                        //         left: 210.0, top: 10.0),
                                        //     child: new RaisedButton(
                                        //         color: Theme.of(context)
                                        //             .primaryColor,
                                        //         child: Text('ACCEPT',
                                        //             style: TextStyle(
                                        //                 color: Colors.white)),
                                        //         onPressed: () {} //{
                                        //         //  Navigator.pushNamed(context, 'confirmed');
                                        //         //},
                                        //         )),
                                      ],
                                    ),
                                  ],
                                ),
                              ]))),
                ),
              ],
            )
          ])),
    );
  }
}
