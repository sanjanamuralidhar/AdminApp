import 'package:AdminApp/bloc/orders/orders_bloc.dart';
import 'package:AdminApp/core/config/config.dart';
import 'package:AdminApp/mocks/cancellation_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openapi/model/cancellation_request.dart';

import 'moreinfoCancelled.dart';

class CancelledPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return WebCancelled();
      } else {
        return Cancelled();
      }
    });
  }
}

class WebCancelled extends StatefulWidget {
  @override
  _WebCancelledState createState() => _WebCancelledState();
}

class _WebCancelledState extends State<WebCancelled> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return GridView.builder(
      scrollDirection: Axis.vertical,
      itemCount: cancels.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
      shrinkWrap: true,
      itemBuilder: (BuildContext ctxt, int index) {
        CancelledList cancel = cancels[index];
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
                          width: MediaQuery.of(context).size.width * 0.810,
                          color: Colors.grey[200],
                          child: Row(
                            children: <Widget>[
                              Text('orderId:',
                                  textAlign: TextAlign.start,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(cancel.orderId,
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
                            cancel.date,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Customer phone',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(width: 100.0),
                      Row(
                        children: [
                          Text(
                            cancel.customerPhone,
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
                            cancel.refundAmount,
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
                            cancel.transactionId,
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
                      Text(
                        cancel.refundId,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        color: Colors.orangeAccent,
                        textColor: Colors.white,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        // splashColor: Colors.blueAccent,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return LayoutBuilder(
                                builder: (context, constraints) {
                              if (constraints.maxWidth > 1200) {
                                return WebMoreInfo(cancels: cancel);
                              } else if (constraints.maxWidth < 800 &&
                                  constraints.maxWidth > 1200) {
                                return TabMoreInfo();
                              } else {
                                return MoreInfo(cancels: cancel);
                              }
                            });
                          }
                              // WebMoreInfo(cancels: cancel,),
                              ),
                        ),
                        child: Text(
                          "MORE INFO",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),

                      // SizedBox(width: 110.0,),
                      Row(
                        children: [
                          FlatButton(
                            color: Colors.lightGreen,
                            textColor: Colors.white,
                            disabledColor: Colors.grey,
                            disabledTextColor: Colors.black,
                            padding: EdgeInsets.all(8.0),
                            splashColor: Colors.blueAccent,
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            child: Text(
                              "REFUND",
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    ],
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
// class Cancelled extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//         create: (context) => OrdersBloc(),
//         child: Builder(
//           builder: (BuildContext context) {
//             // ignore: close_sinks
//             final OrdersBloc _cancelBloc =
//                 BlocProvider.of<OrdersBloc>(context);
//             _cancelBloc.add(GetOrdersCancelledEvent());
//             print(Config.TOKEN);
//             return Scaffold(
//                 body: BlocBuilder<OrdersBloc, OrdersState>(
//                   builder: (context, state) {
//                     return state is OrdersCancelledLoadedState
//                         ? ListView.builder(
//                             itemBuilder: (context, index) {
//                               return CancelledView(
//                               cancellationRequest : state.cancels[index],
//                               );
//                             },
//                             itemCount: state.cancels.length,
//                           )
//                         : Container();
//                   },
//                 ));
//           },
//         ));
//   }
// }
// class CancelledView extends StatelessWidget {
//    final CancellationRequest cancellationRequest;
//   CancelledView({this.cancellationRequest});

//   @override
//   Widget build(BuildContext context) {
//       return BlocBuilder<OrdersBloc, OrdersState>(
//         builder: (context, state) {
//       return Scaffold(
//          body: Padding(
//             padding: EdgeInsets.all(10),
//             child: Card(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ListTile(
//                       onTap: () {},
//                       title: Row(
//                         children: <Widget>[
//                           Container(
//                             // margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 40, vertical: 10),
//                             width: MediaQuery.of(context).size.width * 0.7,
//                             color: Colors.grey[200],
//                             child: Row(
//                               children: <Widget>[
//                                 Text('orderId:',
//                                     textAlign: TextAlign.start,
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold)),
//                                 Text(cancellationRequest.orderId,
//                                     textAlign: TextAlign.start,
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold)),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 10.0),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Text(
//                           'Date',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         // SizedBox(width: 185.0),
//                         Row(
//                           children: [
//                             Text(
//                               cancellationRequest.date.weekday.toString(),
//                               textAlign: TextAlign.end,
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 5.0),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Text(
//                           'Customer phone',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         // SizedBox(width: 100.0),
//                         Row(
//                           children: [
//                             Text(
//                               cancellationRequest.customerPhone.toString(),
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10.0),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Text(
//                           'Refund Amount',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         // SizedBox(
//                         //   width: 150.0,
//                         // ),
//                         Row(
//                           children: [
//                             Text(
//                               cancellationRequest.amount.toString(),
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10.0),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Text(
//                           'TransactionId',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         // SizedBox(
//                         //   width: 140.0,
//                         // ),
//                         Row(
//                           children: [
//                             Text(
//                               cancellationRequest.paymentId,
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10.0),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Text(
//                           'RefundId',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         // SizedBox(
//                         //   width: 120.0,
//                         // ),
//                         Text(
//                           cancellationRequest.refundDetails.refundId,
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         FlatButton(
//                           color: Colors.orangeAccent,
//                           textColor: Colors.white,
//                           disabledColor: Colors.grey,
//                           disabledTextColor: Colors.black,
//                           padding: EdgeInsets.all(8.0),
//                           onPressed: () {},
//                           // splashColor: Colors.blueAccent,
//                           // onPressed: () => Navigator.push(
//                           //   context,
//                           //   MaterialPageRoute(builder: (context) {
//                           //     return LayoutBuilder(
//                           //         builder: (context, constraints) {
//                           //       if (constraints.maxWidth > 1200) {
//                           //         return WebMoreInfo(cancels: cancel);
//                           //       } else {
//                           //         return MoreInfo(cancels: cancel);
//                           //       }
//                           //     });
//                           //   }
//                           //       // MoreInfoPage(cancels: cancel,),
//                           //       ),
//                           // ),
//                           child: Text(
//                             "MORE INFO",
//                             style: TextStyle(fontSize: 12.0),
//                           ),
//                         ),
//                         // SizedBox(width: 110.0,),
//                         Row(
//                           children: [
//                             FlatButton(
//                               color: Colors.lightGreen,
//                               textColor: Colors.white,
//                               disabledColor: Colors.grey,
//                               disabledTextColor: Colors.black,
//                               padding: EdgeInsets.all(8.0),
//                               splashColor: Colors.blueAccent,
//                               onPressed: () {
//                                 showAlertDialog(context);
//                               },
//                               child: Text(
//                                 "REFUND",
//                                 style: TextStyle(fontSize: 12.0),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           )
//         // body: Column(
//         //   children: <Widget>[
//         //     Padding(
//         //       padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//         //       child: Card(
//         //           child: ListTile(
//         //         title: Text(cancellationRequest.orderId),
//         //         // isThreeLine: true,
//         //         subtitle: Text(cancellationRequest.paymentId),
//         //       )),
//         //     ),
//         //   ],
//         // ),
//       );
//     });
//   }
// }
class Cancelled extends StatefulWidget {
  @override
  _CancelledState createState() => _CancelledState();
}

class _CancelledState extends State<Cancelled> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Card(
        child: ListTile(
          leading: Text('27/08/20'),
          trailing: Text('28/08/20'),
        ),
      ),
      ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: cancels.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext ctxt, int index) {
          CancelledList cancel = cancels[index];
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
                            width: MediaQuery.of(context).size.width * 0.7,
                            color: Colors.grey[200],
                            child: Row(
                              children: <Widget>[
                                Text('orderId:',
                                    textAlign: TextAlign.start,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(cancel.orderId,
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
                              cancel.date,
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Customer phone',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(width: 100.0),
                        Row(
                          children: [
                            Text(
                              cancel.customerPhone,
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
                              cancel.refundAmount,
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
                              cancel.transactionId,
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
                        Text(
                          cancel.refundId,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          color: Colors.orangeAccent,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.all(8.0),
                          // splashColor: Colors.blueAccent,
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return LayoutBuilder(
                                  builder: (context, constraints) {
                                if (constraints.maxWidth > 1200) {
                                  return WebMoreInfo(cancels: cancel);
                                } else if (constraints.maxWidth < 800 &&
                                    constraints.maxWidth > 1200) {
                                  return TabMoreInfo();
                                } else {
                                  return MoreInfo(cancels: cancel);
                                }
                              });
                            }
                                // MoreInfoPage(cancels: cancel,),
                                ),
                          ),
                          child: Text(
                            "MORE INFO",
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ),
                        // SizedBox(width: 110.0,),
                        Row(
                          children: [
                            FlatButton(
                              color: Colors.lightGreen,
                              textColor: Colors.white,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.blueAccent,
                              onPressed: () {
                                showAlertDialog(context);
                              },
                              child: Text(
                                "REFUND",
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    ]);
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text('ok'),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Confirmation"),
    content: Text("Are you sure you want to refund."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
