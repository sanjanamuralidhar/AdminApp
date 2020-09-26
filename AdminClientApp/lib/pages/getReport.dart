
import 'package:AdminApp/pages/pdfView.dart';
import 'package:flutter/material.dart';


/// This Widget is the main application widget.
class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reports')),
      body: MyStatelessWidget(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          Card(
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Type',
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 15),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Total',
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 15),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Value',
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 15),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('All')),
                    DataCell(Text('19')),
                    DataCell(Text('234.76')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Card')),
                    DataCell(Text('43')),
                    DataCell(Text('875.5')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Cash')),
                    DataCell(Text('27')),
                    DataCell(Text('223.8')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Delivery')),
                    DataCell(Text('21')),
                    DataCell(Text('567.8')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Collection')),
                    DataCell(Text('11')),
                    DataCell(Text('223.8')),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          RaisedButton(
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PdfView()),
                );
              },
              child: Text(
                " GET PDF",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
