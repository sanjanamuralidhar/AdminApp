import 'package:AdminApp/pages/deliveryBoy_page.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:AdminApp/pages/login.dart';

class DeliverVerificationPage extends StatefulWidget {
  final bool isModeUpdate;

  const DeliverVerificationPage(this.isModeUpdate);

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<DeliverVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: new LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstrains) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: viewportConstrains.maxHeight),
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      child: Center(
                          child: Text(
                            "Verification",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: 80.0,
                      child: Center(
                          child: Text(
                            "Enter the code we just sent you on your email/phone",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          )),
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
                      child: PinCodeTextField(
                        length: 4,
                        onChanged: null,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          inactiveColor: Colors.grey,
                          inactiveFillColor: Colors.grey,
                          fieldHeight: 50,
                          fieldWidth: 40,
                          activeColor: Colors.orange,
                          activeFillColor: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Didn't receive the code? ",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                          children: [
                            TextSpan(
                                text: " RESEND",
                                style: TextStyle(
                                    color: Color(0xFF91D3B3),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))
                          ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.green,
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        onPressed: () {
                          if (!widget.isModeUpdate) {
                          } else {
                            // Navigator.pushNamed(context, "select-location");
                            Fluttertoast.showToast(
                                msg: "Contact Saved",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.green,
                                textColor: Colors.white,
                                fontSize: 16.0);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Delivery(),
                                ));
                          }
                        },
                        child: Text("VERIFY",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
