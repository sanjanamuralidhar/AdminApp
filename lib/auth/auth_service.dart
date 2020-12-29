import 'package:AdminApp/core/config/config.dart';
// ignore: unused_import
import 'package:oauth2/oauth2.dart' as oauth2;
import 'package:openid_client/openid_client_io.dart';
import 'package:url_launcher/url_launcher.dart';

//realms/Graeshoppe/account/*
class AuthService {
  // ignore: non_constant_identifier_names
  Map<String, String> Token;

  Future authenticate() async {
    var uri = Uri.parse(
        'http://dev.keycloak.divisosofttech.com:9080/auth/realms/jhipster');
    var clientId = 'web_app';
    var scopes = List<String>.of(['openid', 'profile', 'email']);
    var port = 9080;
    var issuer = await Issuer.discover(uri);
    var client = new Client(issuer, clientId,
        clientSecret: '5a81bfcd-9f66-441b-9e9f-6c011b8c8644');
    urlLauncher(String url) async {
      if (await canLaunch(url)) {
        await launch(url, forceWebView: true);
      } else {
        throw 'Could not launch $url';
      }
    }

    var authenticator = new Authenticator(
      client,
      scopes: scopes,
      port: port,
      urlLancher: urlLauncher,
    );
    var c = await authenticator.authorize();
    closeWebView();
    print(c.toJson());
    var token = await c.getTokenResponse();
    // print(token);
    Config.TOKEN = {'Authorization':'Bearer ${token.accessToken.toString()}'};
    //  print(Config.TOKEN);
    // this.Token = token as Map<String, String>;
    // ignore: unused_local_variable
    var userInformation = await c.getUserInfo();
    return token;
  }
}
