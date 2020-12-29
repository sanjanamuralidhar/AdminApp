import 'package:AdminApp/mocks/completed_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'moreinfoCompleted.dart';

class CancelRequest extends StatefulWidget {
  @override
  _CancelRequestState createState() => _CancelRequestState();
}

class _CancelRequestState extends State<CancelRequest> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cancellation Requests'),
      ),
      body: ListView(
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
                                  return WebMoreInfoCld(complete: complete);
                                } else if (constraints.maxWidth < 800 &&
                                    constraints.maxWidth > 1200) {
                                  return TabMoreInfoCld();
                                } else {
                                  return MoreinfoCld(complete: complete);
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
                                "CANCEL",
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
        ],
      ),
    );
  }}
    showAlertDialog(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text('ok'),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Confirmation"),
    content: Text("Are you sure you want to cancel."),
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


// class CancelRequest extends StatelessWidget {
//   Widget build(context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cancellation Requests'),
//       ),
//       body: Stack(
//         children: [
//           CustomScrollView(slivers: [
//             BlocBuilder<CancellationInitBloc, CancellationInitState>(
//               builder: (context, state) {
//                 print('>>> Loading State : ' + state.toString());
//                 if (state is CancellationLoadingState) {
//                   print(state.toString());
//                   BlocProvider.of<CancellationInitBloc>(context)
//                       .add(CancellationLoadedEvent());
//                   return SliverToBoxAdapter(
//                       child: Center(
//                     child: Container(
//                       height: MediaQuery.of(context).size.height / 2,
//                       child: CupertinoActivityIndicator(
//                         animating: true,
//                         radius: 50,
//                       ),
//                     ),
//                   ));
//                 } else if (state is CancellationLoadedState) {
//                   print(state);
//                   print(state.cancel.toList()[1].id != null
//                       ? state.cancel.toList()[1].id
//                       : 'Null');
//                   return CancellationLists();
//                 } else {
//                   print(state);
//                   return SliverToBoxAdapter(
//                     child: Center(
//                         child: Text('No Cancellation Requests Found....')),
//                   );
//                 }
//               },
//             ),
//           ]),
//         ],
//       ),
//     );
//   }
// }

// class CancellationLists extends StatelessWidget {
//   final CancellationRequestDTO cancel;
//   CancellationLists({this.cancel});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CancellationInitBloc, CancellationInitState>(
//         builder: (context, state) {
//       return Scaffold(
//         body: Column(
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//               child: Card(
//                   child: ListTile(
//                 title: Text(cancel.customerEmail),
//                 // isThreeLine: true,
//                 subtitle: Text(cancel.amount.toString()),
//               )),
//             ),
//           ],
//         ),
//       );
//     });
//   }
// }
//
