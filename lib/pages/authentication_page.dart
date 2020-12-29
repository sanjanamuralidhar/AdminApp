import 'package:AdminApp/core/config/config.dart';
import 'package:AdminApp/pages/home/homeTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:AdminApp/auth/auth_service.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthService auth = AuthService();
    auth.authenticate().then((token) {
      // Config.TOKEN = {'Authenticator':'Bearer ${token.toString()}'};
      // Navigator.pushNamed(context, 'Home');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyHome()));
    });

    return Scaffold();
  }
}
// username : admin password : FSR4gqnPbf6V5Ez
