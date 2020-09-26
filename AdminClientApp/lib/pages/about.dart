import 'package:AdminApp/sidemenu.dart';
import 'package:flutter/material.dart';
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth > 1200){
         return WebAbout();
        }
        else if(constraints.maxWidth < 800 && constraints.maxWidth > 1200){
          return WebAbout();
        }
          else {
          return About();
          }
      }
      );
  }
}

class WebAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: SideMenu(),
      appBar: AppBar(
  backgroundColor: Theme.of(context).primaryColor,
        title: Text('About'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ListTile(
                                          title: Text(
                        'Food Exp.ie - Order Food Online from nearest Takeaways in Ireland. Food Exp is the Irelands leading online takeaway ordering service, we are planning to expand your business to all over Ireland, including all the major cities of Ireland. We are a start up in our sector, establishing an online marketplace for ordering takeaway food online. Our sophisticated, efficient end-to-end-system seamlessly connects local independent restaurants with our valuable local consumers. Food Exp Ltd operates a leading marketplace for online food delivery and we based on Ireland, we use proprietary technology to offer a quick and efficient ordering service for all over Ireland customers. Food Exp Ltd is a company incorporated and registered in Ireland, with a registered office at Mullingar, Co. Westmeath. If you require any further information about our company, please do not hesitate to contact us on foodexp.ie@gmail.com or phone 044 93.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(''),
                        Padding(
                          padding: const EdgeInsets.only(right:12.0),
                          child: Row(
                            children: [
                              Text(
                                '4574',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                     SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(''),
                        Padding(
                          padding: const EdgeInsets.only(right:12.0),
                        child:Row(
                          children: [
                            Text(
                              'foodexp.ie@gmail.com',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: SideMenu(),
      appBar: AppBar(
  backgroundColor: Theme.of(context).primaryColor,
        title: Text('About'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ListTile(
                                          title: Text(
                        'Food Exp.ie - Order Food Online from nearest Takeaways in Ireland. Food Exp is the Irelands leading online takeaway ordering service, we are planning to expand your business to all over Ireland, including all the major cities of Ireland. We are a start up in our sector, establishing an online marketplace for ordering takeaway food online. Our sophisticated, efficient end-to-end-system seamlessly connects local independent restaurants with our valuable local consumers. Food Exp Ltd operates a leading marketplace for online food delivery and we based on Ireland, we use proprietary technology to offer a quick and efficient ordering service for all over Ireland customers. Food Exp Ltd is a company incorporated and registered in Ireland, with a registered office at Mullingar, Co. Westmeath. If you require any further information about our company, please do not hesitate to contact us on foodexp.ie@gmail.com or phone 044 93.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(''),
                        Padding(
                          padding: const EdgeInsets.only(right:12.0),
                          child: Row(
                            children: [
                              Text(
                                '4574',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                     SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(''),
                        Padding(
                          padding: const EdgeInsets.only(right:12.0),
                        child:Row(
                          children: [
                            Text(
                              'foodexp.ie@gmail.com',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//
//theme: new ThemeData(
//primaryColor: Colors.redAccent,
//brightness: Brightness.light,
////       secondaryHeaderColor: Colors.green,
////        buttonColor: Colors.red
//),