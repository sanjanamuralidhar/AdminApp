import 'package:flutter/material.dart';

class AddOffer extends StatefulWidget {
  @override
  _AddOfferState createState() => _AddOfferState();
}

class _AddOfferState extends State<AddOffer> {
  String name;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Add Offers'),
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
                  // initialValue: "SUPER10",
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
                  // initialValue: "10% off for every first and 10th order",
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






// import 'package:AdminApp/bloc/offerinit/offerinit_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:openapi/model/offer_model.dart';

// class AddOffer extends StatelessWidget {
//   final GlobalKey<FormState> _fbKeyOffer = GlobalKey<FormState>();
//   // final _fbKeyOffer = GlobalKey<FormState>();
//   final ValueChanged _onChanged = (val) => print(val);
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<OfferInitBloc, OfferInitState>(
//       builder: (context, state) {
//         debugPrint('LoginScreen->Inside AuthBloc Listen $state');
//         return _buildMainWidget(context, _fbKeyOffer);
//       },
//     );
//   }

//   Widget _buildMainWidget(
//       BuildContext context, GlobalKey<FormState> _fbKeyOffer) {
//     // ignore: close_sinks
//     // ignore: unused_local_variable
//     final OfferInitBloc _offerbloc = BlocProvider.of<OfferInitBloc>(context);
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('AddOffer'),
//         ),
//         body: BlocProvider<OfferInitBloc>(
//             create: (context) => OfferInitBloc(),
//             child: Builder(builder: (context) {
//               // ignore: close_sinks
//               final _offerbloc = BlocProvider.of<OfferInitBloc>(context);
//               return BlocBuilder<OfferInitBloc, OfferInitState>(

//                   // ignore: missing_return
//                   builder: (context, state) {
//                 if (state is OfferCrudCompletedState) {
//                   OfferModel offermodel = new OfferModel();
//                   return Builder(builder: (BuildContext context) {
//                     return Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: ListView(children: <Widget>[
//                           Form(
//                               key: _fbKeyOffer,
//                               child: Column(children: <Widget>[
//                                 TextFormField(
//                                     decoration: const InputDecoration(
//                                       labelText: 'title',
//                                     ),
//                                     initialValue: '',
//                                     onChanged: _onChanged,
//                                     validator: (value) {
//                                       if (value.length < 1) {
//                                         return 'title cannot be empty';
//                                       }
//                                       return null;
//                                     }),
//                                 SizedBox(height: 15),
//                                 TextFormField(
//                                     // attribute: 'discription',
//                                     decoration: const InputDecoration(
//                                       labelText: 'description',
//                                     ),
//                                     initialValue: '',
//                                     onChanged: _onChanged,
//                                     // onChanged: (value) {
//                                     //           offermodel?.description = value;
//                                     //         },
//                                     validator: (value) {
//                                       if (value.length < 1) {
//                                         return 'discription cannot be empty';
//                                       }
//                                       return null;
//                                     }),
//                               ])),
//                           FlatButton(
//                             color: Theme.of(context).accentColor,
//                             child: Text(
//                               'Add',
//                               style: Theme.of(context).textTheme.button,
//                             ),
//                             onPressed: () {
//                               if (_fbKeyOffer.currentState.validate()) {
//                                 // var offermodel = OfferModel().toBuilder()
//                                 // ..title = _fbKeyOffer.currentState.value['title']
//                                 // ..description =
//                                 //     _fbKeyOffer.currentState.['discription'];
//                                 _offerbloc
//                                     .add(CreateOfferEvent(offer1: offermodel));
//                               } else {
//                                 print('creation failed');
//                               }
//                             },
//                           ),
//                         ]));
//                   });
//                 }
//               });
//             })));
//   }
// }

// import 'package:AdminApp/bloc/offerinit/offerinit_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:openapi/model/banner_dto.dart';
// import 'package:openapi/model/offer_model.dart';

// class AddOffer extends StatelessWidget {

//   final ValueChanged _onChanged = (val) => print(val);
//   @override
//   Widget build(BuildContext context) {
//        return BlocProvider(
//         create: (context) => OfferInitBloc(),
//         child: Builder(
//           builder: (BuildContext context) {
//             // ignore: close_sinks
//             final OfferInitBloc _offerBloc =
//                 BlocProvider.of<OfferInitBloc>(context);
//             _offerBloc.add(GetOfferInitdataEvent());
//                 return Scaffold(
//       appBar: AppBar(
//           title: Text('AddOffer'),
//       ),
//       body: BlocBuilder<OfferInitBloc, OfferInitState>(
//                   builder: (context, state) {
//                      OfferModel offermodel;
//               return SingleChildScrollView(
//             child: Container(
//               margin: EdgeInsets.all(10),
//               child: Column(
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Container(
//                         child:  FormBuilderTextField(
//                       attribute: 'title',
//                       decoration: const InputDecoration(
//                         labelText: 'Title',
//                       ),
//                       initialValue: '',
//                       onChanged: _onChanged,
//                       validators: [
//                         FormBuilderValidators.required(),
//                         //FormBuilderValidators.email(),
//                       ],
//                       keyboardType: TextInputType.text,
//                     ),

//                     //     TextFormField(
//                     //   decoration: InputDecoration(
//                     //     labelText: "Offer Name",
//                     //   ),
//                     //     initialValue: offermodel?.startDate ?? '',
//                     //           // onChanged: (value) {
//                     //           //   offermodel?. = value;
//                     //           // },

//                     // )
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Container(
//                         child: FormBuilderTextField(
//                       attribute: 'discription',
//                       decoration: const InputDecoration(
//                         labelText: 'Discription',
//                       ),
//                       initialValue: '',
//                       onChanged: _onChanged,
//                       validators: [
//                         FormBuilderValidators.required(),
//                         //FormBuilderValidators.email(),
//                       ],
//                       keyboardType: TextInputType.text,
//                     ),
//                     //     TextFormField(
//                     //   decoration: InputDecoration(labelText: "Description"),
//                     //   initialValue: offermodel?.description?? '',

//                     // )
//                     ),
//                   ),
//                   RaisedButton(
//                             child: Text('Add'),
//                             onPressed: () {
//                               ..username = _fbKeyLoginPage.currentState.value['title']
//                       ..password =_fbKeyLoginPage.currentState.value['discription'];
//                     _authBloc.add(CreateOfferEvent(offer1: ));
//                                _offerBloc.add(CreateOfferEvent());
//                                Navigator.pop(context);

//                               }
//                           )
//                 ],
//               ),
//             ),
//         );
//                   }
//       ),
//       bottomNavigationBar: BottomAppBar(
//           child: Container(
//             margin: EdgeInsets.all(20),
//             child: Material(
//               elevation: 5.0,
//               borderRadius: BorderRadius.circular(30.0),
//               color: Colors.green,
//               child: MaterialButton(
//                 minWidth: MediaQuery.of(context).size.width,
//                 padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//                 onPressed: () {
//                   Navigator.pop(context);
//                   //  Navigator.push(context,MaterialPageRoute(builder: (context)=>DashBoard()));
//                 },
//                 child: Text("Add",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.bold)),
//               ),
//             ),
//           ),
//       ),
//     );

//   }
//         ));
//         }

// }
// CREATE OPERATION USING ***FormBuilderTextField***

// import 'package:AdminApp/bloc/offerinit/offerinit_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:openapi/model/offer_dto.dart';
// import 'package:openapi/model/offer_model.dart';

// class AddOffer extends StatelessWidget {
//   final GlobalKey<FormBuilderState> _fbKeyOffer =
//       GlobalKey<FormBuilderState>();

//   final ValueChanged _onChanged = (val) => print(val);
//   @override
//   Widget build(BuildContext context) {
//     final OfferInitBloc _offerbloc = BlocProvider.of<OfferInitBloc>(context);

//     return BlocBuilder<OfferInitBloc, OfferInitState>(
//         builder: (context, state) {
//           debugPrint('LoginScreen->Inside AuthBloc Listen $state');
//           return BlocProvider(
//         create: (context) => OfferInitBloc(),
//         child: Builder(
//           builder: (BuildContext context) {
//             // ignore: close_sinks
//             final OfferInitBloc _offerBloc =
//                 BlocProvider.of<OfferInitBloc>(context);
//             _offerBloc.add(GetOfferInitdataEvent());
//         return _buildMainWidget(context, _fbKeyOffer);
//           }));
//                   },
//                 );
//             }
          
//   Widget _buildMainWidget(BuildContext context, GlobalKey<FormBuilderState> _fbKeyOffer) {
//     // ignore: close_sinks
//     final OfferInitBloc _offerbloc = BlocProvider.of<OfferInitBloc>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AddOffer'),
//       ),
//       body: Builder(
//         builder: (BuildContext context) {
//           return Padding(
//             padding: const EdgeInsets.all(10),
//             child: ListView(children: <Widget>[
//               FormBuilder(
//                 readOnly: false,
//                 key: _fbKeyOffer,
//                 child:Column(
//                   children: <Widget>[
//                     FormBuilderTextField(
//                       attribute: 'title',
//                       decoration: const InputDecoration(
//                         labelText: 'Title',
//                       ),
//                       initialValue: '',
//                       onChanged: _onChanged,
//                       validators: [
//                         FormBuilderValidators.required(),
//                       ],
//                       keyboardType: TextInputType.text,
//                     ),
//                     SizedBox(height:15),
//                     FormBuilderTextField(
//                       attribute: 'discription',
//                       decoration: const InputDecoration(
//                         labelText: 'Discription',
//                       ),
//                       initialValue: '',
//                       onChanged: _onChanged,
//                       validators: [
//                         FormBuilderValidators.required(),
//                       ],
//                       keyboardType: TextInputType.text,
//                     ),
//                   ])
//               ),
//               FlatButton(
//                 color: Theme.of(context).accentColor,
//                 child:  Text(
//                     'Add',
//                     style: Theme.of(context).textTheme.button,
//                 ),
//                 onPressed: () {
//                   print(_fbKeyOffer.currentState.value);
//                   if (_fbKeyOffer.currentState.saveAndValidate()) {
//                     var offermodel = OfferModel().toBuilder()
//                       // ..title = _fbKeyOffer.currentState.value['title']
//                       ..description =
//                           _fbKeyOffer.currentState.value['discription'];
//                     _offerbloc.add(CreateOfferEvent(offer1: offermodel.build()));
//                   } else {

//                     print('creation failed');
//                   }
//                 },
//               ),

//             ])
//           );
//         })
//     );
//   }
// }
