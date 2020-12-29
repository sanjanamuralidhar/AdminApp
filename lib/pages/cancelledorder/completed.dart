
import 'package:AdminApp/bloc/orders/orders_bloc.dart';
import 'package:AdminApp/core/config/config.dart';
import 'package:AdminApp/mocks/completed_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openapi/model/cancellation_request.dart';

import 'moreinfoCompleted.dart';

class CompletedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return WebCompleted();
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
// class Completed extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//         create: (context) => OrdersBloc(),
//         child: Builder(
//           builder: (BuildContext context) {
//             // ignore: close_sinks
//             final OrdersBloc _cancelBloc =
//                 BlocProvider.of<OrdersBloc>(context);
//             _cancelBloc.add(GetOrdersCompletedEvent());
//             print(Config.TOKEN);
//             return Scaffold(
//                 body: BlocBuilder<OrdersBloc, OrdersState>(
//                   builder: (context, state) {
//                     return state is OrdersCompletedLoadedState
//                         ? ListView.builder(
//                             itemBuilder: (context, index) {
//                               return CompletedView(
//                               cancellationRequest : state.completed[index],
//                               );
//                             },
//                             itemCount: state.completed.length,
//                           )
//                         : Container();
//                   },
//                 ));
//           },
//         ));
//   }
// }
// class CompletedView extends StatelessWidget {
//    final CancellationRequest cancellationRequest;
//   CompletedView({this.cancellationRequest});

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
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           )
//       );
//     });
//   }
// }

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
            CompletedList complete;
            complete = completes[index];
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
