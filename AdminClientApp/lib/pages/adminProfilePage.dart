import 'package:flutter/material.dart';

class AdminProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADMIN"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            buildPic(),
            SizedBox(
              height: 20,
            ),
            buildName(),
            SizedBox(
              height: 20,
            ),
            buildMail(),
            SizedBox(
              height: 20,
            ),
            buildContact(),
            SizedBox(
              height: 20,
            ),
            buildContact1(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPic() {
    return Center(
      child: Stack(overflow: Overflow.visible, children: <Widget>[
        CircleAvatar(
          //padding: const EdgeInsets.all(8.0),
          radius: 71,
          backgroundColor: Colors.orange,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            backgroundImage: AssetImage("assets/deliverboy/girl3.jpg"),
            radius: 70,
          ),
        ),

        //SizedBox(height: 20, width: 100),
      ]),
    );
  }

  Widget buildName() {
    return TextField(
      readOnly: true,
      controller: TextEditingController(text: " ADMIN"),
      decoration: InputDecoration(
          labelText: 'Name:',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
    );
  }

  Widget buildContact() {
    return TextField(
      readOnly: true,
      controller: TextEditingController(text: " 957643967349"),
      decoration: InputDecoration(
          labelText: 'Personal Number:',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
    );
  }

  Widget buildContact1() {
    return TextField(
      readOnly: true,
      controller: TextEditingController(text: " 485679065367"),
      decoration: InputDecoration(
          labelText: 'Office Number:',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
    );
  }

  Widget buildMail() {
    return TextField(
      readOnly: true,
      controller: TextEditingController(text: "adminGreashope@gmail.com"),
      decoration: InputDecoration(
          labelText: 'Mail ID:',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
    );
  }

  Widget buildAdar() {
    return TextField(
      readOnly: true,
      controller: TextEditingController(text: " 648965A76348FG"),
      decoration: InputDecoration(
          labelText: 'Adhar Number:',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
    );
  }
}
