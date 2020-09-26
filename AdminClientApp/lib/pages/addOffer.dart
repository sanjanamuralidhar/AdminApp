import 'package:flutter/material.dart';

class AddOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


       return Scaffold(
      appBar: AppBar(
        title: Text('AddOffer'),
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
              child: Text("Add",
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
