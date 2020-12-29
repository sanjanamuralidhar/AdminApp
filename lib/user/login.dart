import 'package:AdminApp/pages/home/homeTab.dart';
import 'package:AdminApp/user/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'forgotpassword.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
 
  String _email;
  String _password;
 bool _obscureText= true;
 void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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

  Widget _buildPassword() {
    return TextFormField(
      obscureText: _obscureText,
      // decoration: InputDecoration(labelText: 'Password'),
       decoration: InputDecoration(
         suffixIcon: FlatButton(
              onPressed: _toggle,
              child: new Text(
                _obscureText ? "Show" : "Hide",
                style: TextStyle(color: Colors.green),
              )),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  

 
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     resizeToAvoidBottomPadding: false,

      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstrains) {
return SingleChildScrollView(
          child:  ConstrainedBox(
            constraints: BoxConstraints(minHeight: viewportConstrains.maxHeight),
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
              key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                   SizedBox(
                     height: 155.0,
                                        child: Center(
                                          child: Text(
                       'Log In',
                       style: TextStyle(
                           fontSize: 40.0,
                           fontWeight: FontWeight.bold,
                           color: Colors.black87,),
                     ),
                                        ),
                   ),
                      
                    _buildEmail(),
                    SizedBox(
                        height: 25.0,
                      ),
                    _buildPassword(),
                   SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        alignment: Alignment(1.0, 0),
                        padding: EdgeInsets.only(top: 15.0, left: 20.0),
                        child: InkWell(
                          onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>ForgotPassword())),
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent),
                          )
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHome()));

               
                        print(_email);
                        print(_password);
                        
                          },
                          child: Text("Log In",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                    Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.orange,
                        child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>Register())),
                          child: Text("New User? Register",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      SizedBox(
                            height: 35.0,
                          ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SignInButton(
                            Buttons.Email,
                            mini: true,
                            onPressed: () {},
                          ),
                          SignInButton(
                            Buttons.Facebook,
                            mini: true,
                            onPressed: () {},
                          ),
                          SignInButton(
                            Buttons.Twitter,
                            mini: true,
                            onPressed: () {},
                          ),
                        ],
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
