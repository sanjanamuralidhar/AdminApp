import 'package:AdminApp/bloc/terms_initial/terms_bloc.dart';
import 'package:AdminApp/sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openapi/model/term_dto.dart';
import 'addTerms.dart';

class Terms extends StatefulWidget {
  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => TermsBloc(),
        child: Builder(builder: (BuildContext context) {
          // ignore: close_sinks
          final TermsBloc termbloc = BlocProvider.of<TermsBloc>(context);

          termbloc.add(GetTermsdataEvent());
          return Scaffold(
              drawer: SideMenu(),
              appBar: AppBar(
                title: Text("Terms & Conditions"),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddTerms())),
                child: Icon(Icons.add),
              ),
              body: BlocBuilder<TermsBloc, TermsState>(
                builder: (context, state) {
                  return state is TermsLoadedState
                      ? ListView.builder(
                          itemBuilder: (context, index) {
                            return TermsView(
                              terms: state.terms[index],
                            );
                          },
                          itemCount: state.terms.length,
                        )
                      : Container();
                },
              ));
        }));
  }
}

class TermsView extends StatelessWidget {
  final List<String> _options = [
    'edit',
    'remove',
  ];

  void optionSelectedFunction(String optionSelected) {
    if (optionSelected == _options[0]) {
      print('option 1 selected');
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => EditTerms()));
    }
    if (optionSelected == _options[1]) {
      print('option 2 selected');
      //showAlertDialog(context);
    }
  }

  final TermDTO terms;
  TermsView({this.terms});

  void showAlertDialog(BuildContext context) {
    Widget cancelButton = FlatButton(
      child: Text('cancel'),
      onPressed: () => Navigator.of(context).pop(),
    );
    Widget okButton = FlatButton(
      child: Text('ok'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Do you want to remove.?"),
      content: Text(""),
      actions: [okButton, cancelButton],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
      ),
      body: Container(
        // color: Colors.amberAccent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .8,
        child: Card(
          child: Stack(fit: StackFit.expand, children: [
            Container(
              height: MediaQuery.of(context).size.height * .6,
              width: MediaQuery.of(context).size.width * .5,
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
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
                      ),
                    ),
                    Text(
                      "16. General Terms of Use for All Vouchers",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        '        Food Exp.ie - Order Food Online from nearest Takeaways in Ireland. Food Exp is the Irelands leading online takeaway ordering service, we are planning to expand your business to all over Ireland, including all the major cities of Ireland. We are a start up in our sector, establishing an online marketplace for ordering takeaway food online. Our sophisticated, efficient end-to-end-system seamlessly connects local independent restaurants with our valuable local consumers. Food Exp Ltd operates a leading marketplace for online food delivery and we based on Ireland, we use proprietary technology to offer a quick and efficient ordering service for all over Ireland customers. Food Exp Ltd is a company incorporated and registered in Ireland, with a registered office at Mullingar, Co. Westmeath. If you require any further information about our company, please do not hesitate to contact us on foodexp.ie@gmail.com or phone 044 93.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

//
