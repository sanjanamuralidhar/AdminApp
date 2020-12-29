import 'package:flutter/material.dart';

class EditOffer extends StatefulWidget {
  @override
  _EditOfferState createState() => _EditOfferState();
}

class _EditOfferState extends State<EditOffer> {
  String name;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Edit Offers'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    child: TextFormField(
                  initialValue: "SUPER10",
                  decoration: InputDecoration(
                    labelText: "Offer Name",
                  ),
                  // ignore: missing_return
                  // validator: (String value) {
                  //     if (value.isEmpty) return 'please enter Restaurant Name';
                  // },
                  // onSaved: (String value) {
                  //     name = value;
                  // },
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    child: TextFormField(
                  initialValue: "10% off for every first and 10th order",
                  decoration: InputDecoration(labelText: "Description"),
                  // ignore: missing_return
                  // validator: (String value) {
                  //     if (value.isEmpty) return 'please enter Restaurant Name';
                  // },
                  // onSaved: (String value) {
                  //     name = value;
                  // },
                )),
              ),
              SizedBox(
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.green,
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              onPressed: () {
                Navigator.pop(context);
                //  Navigator.push(context,MaterialPageRoute(builder: (context)=>DashBoard()));
              },
              child: Text("Edit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }
}
