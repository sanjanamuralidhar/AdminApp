
import 'package:AdminApp/user/verifyPage.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String _email;
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget _buildEmail() {
    return TextFormField(
      // decoration: InputDecoration(labelText: 'Email'),
       decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstrains){
              return SingleChildScrollView(
                child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: viewportConstrains.maxHeight),
                  child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key:_formKey,
                              child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                height: 155.0,
                child: Center(
                  child: Text(
                    'forgot Your Password?',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                      ),
                     
                      ListTile(
                                              title: Text(
                            'To reset your password, please enter your Graeshoppe Registered EmailID. Graeshoppe.com will send the password reset instructions to the email address for this account.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                          ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                       _buildEmail(),
                    SizedBox(
                        height: 25.0,
                      ),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.green,
                        child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          onPressed: () {
                            if (!_formKey.currentState.validate()) {
                          return;
                        }

                        _formKey.currentState.save();
                        showAlertDialog(context);
                       
               
                        print(_email);
                        
                          },
                          child: Text("Send",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
              ),
            ),
          ),
        );
        }
      ),
    );
  }
}
showAlertDialog(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text('ok'),
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => VerificationPage(true)));
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Confirmation "),
    content: Text("Graeshoppe has send a password reset instructions to the email address for this account."),
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