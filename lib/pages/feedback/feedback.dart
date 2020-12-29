import 'package:AdminApp/mocks/feedbacks_list.dart';
import 'package:AdminApp/pages/home/home.dart';
import 'package:AdminApp/sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'feedbackTab.dart';

class FeedBackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: missing_return
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return WebFeedBack();
      } else if (constraints.maxWidth < 800 && constraints.maxWidth > 1200) {
        // return TabFeedBack();
      } else {
        return FeedBack();
      }
    });
  }
}

class WebFeedBack extends StatefulWidget {
  @override
  _WebFeedBackState createState() => _WebFeedBackState();
}

class _WebFeedBackState extends State<WebFeedBack> {
  var data = [
    "1",
    "2",
    "3",
    "1",
    "2",
    "3",
    "1",
    "2",
    "3",
    "1",
    "2",
    "3",
    "1",
    "2",
    "3",
    "1",
    "2",
    "3",
    "1",
    "2",
    "3",
  ];
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("clear all feedback?"),
                        actions: [
                          FlatButton(
                            child: Text(
                              "Ok",
                              style: TextStyle(color: Colors.red),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Home();
                              }));
                            },
                          ),
                          FlatButton(
                            child: Text(
                              "cancel",
                              style: TextStyle(color: Colors.blue),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return FeedBack();
                              }));
                            },
                          ),
                        ],
                      );
                    });
              },
              child: Text("clear"),
            ),
          )
        ],
        title: Text('feedback'),
      ),
      body: Column(
        children: <Widget>[
          SortFilterButton(),
          Expanded(
            flex: 5,
            child: GridView.builder(
              itemCount: lists.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      (orientation == Orientation.portrait) ? 2 : 4),
              itemBuilder: (BuildContext context, int index) {
                FeedBacks feed = lists[index];
                return new Padding(
                  padding: EdgeInsets.all(10),

                  //height: 50,

                  child: Dismissible(
                    background: Container(color: Colors.orange),
                    onDismissed: (direction) {
                      // Show a snackbar. This snackbar could also contain "Undo" actions.
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(" ${data[index]} Feedback dismissed"),
                        action: SnackBarAction(
                          label: 'UNDO',
                          onPressed: () {
                            Fluttertoast.showToast(
                                msg: " ${data[index]} feedBack restored",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.orange,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          },
                        ),
                      ));
                      // Remove the item from the data source.
                      setState(() {
                        data.removeAt(index);
                      });
                    },
                    key: Key(data[index]),
                    child: Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              // mainAxisAlignment:
                              //     MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: <Widget>[
                                    Text(
                                      feed.mailid,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.grey[200],
                                      ),
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                      padding: EdgeInsets.all(8.0),

                                      //  color: Colors.grey[200],
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            feed.tk,
                                            textAlign: TextAlign.start,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Row(
                                  children: <Widget>[
                                    IconTheme(
                                      data: IconThemeData(
                                        color: Colors.amber,
                                        size: 20,
                                      ),
                                      child: StarDisplay(value: feed.rating),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      feed.resName,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      feed.content,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  var data = [
    "wang",
    "chicken Hut",
    "spice India ",
    "abhi",
    "sanj",
    "Ajith",
    "wang",
    "chicken Hut",
    "spice India ",
    "abhi",
    "sanj",
    "Ajith",
    "wang",
    "chicken Hut",
    "spice India ",
    "abhi",
    "sanj",
    "Ajith",
    "wang",
    "chicken Hut",
    "spice India ",
    "abhi",
    "sanj",
    "Ajith",
  ];
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("clear all feedback?"),
                        actions: [
                          FlatButton(
                            child: Text(
                              "Ok",
                              style: TextStyle(color: Colors.red),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Home();
                              }));
                            },
                          ),
                          FlatButton(
                            child: Text(
                              "cancel",
                              style: TextStyle(color: Colors.blue),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return FeedBack();
                              }));
                            },
                          ),
                        ],
                      );
                    });
              },
              child: Text("clear"),
            ),
          )
        ],
        title: Text('feedback'),
      ),
      body: Column(
        children: <Widget>[
          SortFilterButton(),
          Expanded(
            flex: 10,
            child: ListView.builder(
              itemCount: lists.length,
              itemBuilder: (BuildContext context, int index) {
                FeedBacks feed = lists[index];
                return new Padding(
                  padding: EdgeInsets.all(10),
                  child: Dismissible(
                    background: Container(color: Colors.orange),
                    onDismissed: (direction) {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text(" ${data[index]} Feedback dismissed"),
                          action: SnackBarAction(
                            label: 'UNDO',
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: " ${data[index]} feedBack restored",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.orange,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            },
                          ),
                        ),
                      );
                      // Remove the item from the data source.
                      setState(() {
                        data.removeAt(index);
                      });
                    },
                    key: Key(data[index]),
                    child: Card(
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          feed.mailid,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.grey[200],
                                          ),
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 5, 0, 0),
                                          padding: EdgeInsets.all(8.0),

                                          //  color: Colors.grey[200],
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                feed.tk,
                                                textAlign: TextAlign.start,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      children: <Widget>[
                                        IconTheme(
                                          data: IconThemeData(
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                          child:
                                              StarDisplay(value: feed.rating),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          feed.resName,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          feed.content,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class StarDisplay extends StatelessWidget {
  final int value;

  const StarDisplay({Key key, this.value})
      : assert(value != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
        );
      }),
    );
  }
}

class SortFilterButton extends StatefulWidget {
  @override
  _SortFilterButtonState createState() => _SortFilterButtonState();
}

class _SortFilterButtonState extends State<SortFilterButton> {
  int selectedRadio = 1;

  bool isSwitched = false;

  final List<String> _options = [
    'Mr.Wangs',
    'SpiceIndia',
    'ChickenHut',
    'PapaEnthis'
  ];

  void optionSelectedFunction(String optionSelected) {
    if (optionSelected == _options[0]) {
      print('option 1 selected');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FeedbackTab()));
    }
    if (optionSelected == _options[1]) {
      print('option 2 selected');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FeedbackTab()));
    }
    if (optionSelected == _options[2]) {
      print('option 3 selected');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FeedbackTab()));
    }
    if (optionSelected == _options[3]) {
      print('option 3 selected');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FeedbackTab()));
    }
  }

  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 50.0,
            child: Card(
              child: FlatButton(
                //height: 20,
                onPressed: () => {_onButtonPressed()},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                    children: <Widget>[
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.sort,
                            color: Colors.orange,
                          )),
                      Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Sort",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 50.0,
            child: Card(
              child: FlatButton(
                onPressed: () => {_onButtonPressed()},
                child: PopupMenuButton<String>(
                  itemBuilder: (BuildContext context) =>
                      _options.map((String option) {
                    return PopupMenuItem(
                      child: Text(option),
                      value: option,
                    );
                  }).toList(),
                  onSelected: (String optionSelected) {
                    optionSelectedFunction(optionSelected);
                  },
                  //properties
                  tooltip: 'Popup Menu Button',
                  onCanceled: () {
                    print(
                        'user dismissed popup menu without selecting any option');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Stack(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.filter_list,
                              color: Colors.orange,
                            )),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Filter",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 180,
            child: Column(
              children: <Widget>[
                ListTile(
                    title: Row(
                  children: <Widget>[
                    Text('SORT BY',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey)),
                  ],
                )),
                ListTile(
                    onTap: () {},
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Rating -- High to Low'),
                        SizedBox(
                          width: 130.0,
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: selectedRadio,
                              onChanged: (val) {
                                print(val);
                                setState(() {
                                  selectedRadio = val;
                                  Navigator.pop(context);
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    )),
                ListTile(
                    title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Rating -- Low to High'),
                    SizedBox(
                      width: 130.0,
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          onChanged: (val) {
                            print(val);
                            setState(() {
                              selectedRadio = val;
                              Navigator.pop(context);
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ))
              ],
            ),
          );
        });
  }
}
