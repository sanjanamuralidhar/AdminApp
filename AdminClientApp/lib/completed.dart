import 'package:AdminApp/models/moreinfoCompleted_model.dart';
import 'package:flutter/material.dart';
import 'models/completed_modal.dart';
import 'moreinfoCompleted.dart';

class CompletedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return WebCompleted();
      } else if (constraints.maxWidth < 800 && constraints.maxWidth > 1200) {
        return TabCompleted();
      } else {
        return Completed();
      }
    });
  }
}

class WebCompleted extends StatefulWidget {
  @override
  _WebCompletedState createState() => _WebCompletedState();
}

class _WebCompletedState extends State<WebCompleted> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return GridView.builder(
      scrollDirection: Axis.vertical,
      itemCount: completes.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
      shrinkWrap: true,
      itemBuilder: (BuildContext ctxt, int index) {
        CompletedList complete = completes[index];
        return new Padding(
          padding: EdgeInsets.all(10),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    onTap: () {},
                    title: Row(
                      children: <Widget>[
                        Container(
                          // margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          width: MediaQuery.of(context).size.width * 0.8,
                          color: Colors.grey[200],
                          child: Row(
                            children: <Widget>[
                              Text('orderId:',
                                  textAlign: TextAlign.start,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(complete.orderId,
                                  textAlign: TextAlign.start,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Date',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(width: 185.0),
                      Row(
                        children: [
                          Text(
                            complete.date,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Customer phone',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 100.0),
                      Row(
                        children: [
                          Text(
                            complete.customerPhone,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Refund Amount',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(
                      //   width: 150.0,
                      // ),
                      Row(
                        children: [
                          Text(
                            complete.refundAmount,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'TransactionId',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(
                      //   width: 140.0,
                      // ),
                      Row(
                        children: [
                          Text(
                            complete.transactionId,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'RefundId',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(
                      //   width: 120.0,
                      // ),
                      Row(
                        children: [
                          Text(
                            complete.refundId,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  FlatButton(
                    color: Colors.orangeAccent,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LayoutBuilder(builder: (context, constraints) {
                          if (constraints.maxWidth > 1200) {
                            return WebMoreInfoCld(complete: complete);
                          } else if (constraints.maxWidth < 800 &&
                              constraints.maxWidth > 1200) {
                            return TabMoreInfoCld();
                          } else {
                            return MoreinfoCld(complete: complete);
                          }
                        });
                      }
                          // MoreinfoCld(
                          //   complete: complete,
                          // ),
                          ),
                    ),
                    child: Text(
                      "MORE INFO",
                      style: TextStyle(fontSize: 12.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class TabCompleted extends StatefulWidget {
  @override
  _TabCompletedState createState() => _TabCompletedState();
}

class _TabCompletedState extends State<TabCompleted> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Completed extends StatefulWidget {
  @override
  _CompletedState createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: ListTile(
            leading: Text('27/08/20'),
            trailing: Text('28/08/20'),
          ),
        ),
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: completes.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext ctxt, int index) {
            CompletedList complete = completes[index];
            return new Padding(
              padding: EdgeInsets.all(10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        onTap: () {},
                        title: Row(
                          children: <Widget>[
                            Container(
                              // margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 10),
                              width: MediaQuery.of(context).size.width * 0.75,
                              color: Colors.grey[200],
                              child: Row(
                                children: <Widget>[
                                  Text('orderId:',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(complete.orderId,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Date',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(width: 185.0),
                          Row(
                            children: [
                              Text(
                                complete.date,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Customer phone',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 100.0),
                          Row(
                            children: [
                              Text(
                                complete.customerPhone,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Refund Amount',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   width: 150.0,
                          // ),
                          Row(
                            children: [
                              Text(
                                complete.refundAmount,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'TransactionId',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   width: 140.0,
                          // ),
                          Row(
                            children: [
                              Text(
                                complete.transactionId,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'RefundId',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   width: 120.0,
                          // ),
                          Row(
                            children: [
                              Text(
                                complete.refundId,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      FlatButton(
                        color: Colors.orangeAccent,
                        textColor: Colors.white,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.blueAccent,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return LayoutBuilder(
                                builder: (context, constraints) {
                              if (constraints.maxWidth > 1200) {
                                return WebMoreInfoCld(complete: complete);
                              } else if (constraints.maxWidth < 800 &&
                                  constraints.maxWidth > 1200) {
                                return TabMoreInfoCld();
                              } else {
                                return MoreinfoCld(complete: complete);
                              }
                            });
                          }
                              // MoreinfoCld(
                              //   complete: complete,
                              // ),
                              ),
                        ),
                        child: Text(
                          "MORE INFO",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
