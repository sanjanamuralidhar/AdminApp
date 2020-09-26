import 'package:AdminApp/models/cancellation_modal.dart';
import 'package:AdminApp/models/moreinfoCancelled_model.dart';
import 'package:flutter/material.dart';

class MoreInfoPage extends StatelessWidget {
  final CancelledList cancels;
  MoreInfoPage({this.cancels});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return WebMoreInfo();
      } else if (constraints.maxWidth < 800 && constraints.maxWidth > 1200) {
        return TabMoreInfo();
      } else {
        return MoreInfo();
      }
    });
  }
}

class WebMoreInfo extends StatefulWidget {
  final CancelledList cancels;
  WebMoreInfo({this.cancels});
  @override
  _WebMoreInfoState createState() => _WebMoreInfoState();
}

class _WebMoreInfoState extends State<WebMoreInfo> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Column(children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'OrderId: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.cancels.orderId,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ]),
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.cancels.more.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      (orientation == Orientation.portrait) ? 2 : 3),
        shrinkWrap: true,
        itemBuilder: (BuildContext ctxt, int index) {
          MoreInfoCancelled activity = widget.cancels.more[index];
          return new Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Image.asset(
                              activity.imageUrl,
                              width: MediaQuery.of(context).size.width * .1,
                              height: MediaQuery.of(context).size.width * .08,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'ProductName',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // SizedBox(width: 100.0),
                        Row(
                          children: [
                            Text(
                              activity.productName,
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
                        // SizedBox(width: 100.0),
                        Row(
                          children: [
                            Text(
                              activity.customerPhone,
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
                          'CustomerId',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(width: 180.0,),
                        Row(
                          children: [
                            Text(
                              activity.customerId,
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
                          'Date',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(width: 179.0,),
                        Row(
                          children: [
                            Text(
                              activity.date,
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
                          'OrderId',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   width: 165.0,
                        // ),
                        Row(
                          children: [
                            Text(
                              activity.orderId,
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
                          'PaymentStatus',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   width: 85.0,
                        // ),
                        Row(
                          children: [
                            Text(
                              activity.paymentStatus,
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
                          'TotalDue',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   width: 190.0,
                        // ),
                        Row(
                          children: [
                            Text(
                              activity.totalDue,
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
                          'RefundAmount',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   width: 152.0,
                        // ),
                        Row(
                          children: [
                            Text(
                              activity.refundAmount,
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
                        //   width: 140.0,
                        // ),
                        Row(
                          children: [
                            Text(
                              activity.refundId,
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
                        //   width: 135.0,
                        // ),
                        Row(
                          children: [
                            Text(
                              activity.transactionId,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TabMoreInfo extends StatefulWidget {
  @override
  _TabMoreInfoState createState() => _TabMoreInfoState();
}

class _TabMoreInfoState extends State<TabMoreInfo> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MoreInfo extends StatefulWidget {
  final CancelledList cancels;
  MoreInfo({this.cancels});

  @override
  _MoreInfoState createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'OrderId: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.cancels.orderId,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ]),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.cancels.more.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext ctxt, int index) {
          MoreInfoCancelled activity = widget.cancels.more[index];
          return new Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * .87,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Image.asset(
                              activity.imageUrl,
                              width: MediaQuery.of(context).size.width * .8,
                              height: MediaQuery.of(context).size.width * .5,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'ProductName',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // SizedBox(width: 100.0),
                        Row(
                          children: [
                            Text(
                              activity.productName,
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
                        // SizedBox(width: 100.0),
                        Row(
                          children: [
                            Text(
                              activity.customerPhone,
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
                          'CustomerId',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(width: 180.0,),
                        Row(
                          children: [
                            Text(
                              activity.customerId,
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
                          'Date',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(width: 179.0,),
                        Row(
                          children: [
                            Text(
                              activity.date,
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
                          'OrderId',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   width: 165.0,
                        // ),
                        Row(
                          children: [
                            Text(
                              activity.orderId,
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
                          'PaymentStatus',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   width: 85.0,
                        // ),
                        Row(
                          children: [
                            Text(
                              activity.paymentStatus,
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
                          'TotalDue',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   width: 190.0,
                        // ),
                        Row(
                          children: [
                            Text(
                              activity.totalDue,
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
                          'RefundAmount',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   width: 152.0,
                        // ),
                        Row(
                          children: [
                            Text(
                              activity.refundAmount,
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
                        //   width: 140.0,
                        // ),
                        Row(
                          children: [
                            Text(
                              activity.refundId,
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
                        //   width: 135.0,
                        // ),
                        Row(
                          children: [
                            Text(
                              activity.transactionId,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
