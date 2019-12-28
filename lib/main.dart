import 'package:flutter/material.dart';
import 'package:flutter_app_drawer/services_page.dart';

import 'aboutus_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.pageId: (context) => HomePage(),
        AboutUs.pageId: (context) => AboutUs(),
        Services.pageId: (context) => Services(),
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  static final pageId = "home";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("habilgur@gmail.com"),
            accountName: Text("HG"),
          ),
          ListTile(
              title: Text("Home"),
              onTap: () => Navigator.pushNamed(context, HomePage.pageId)),
          ListTile(
              title: Text("Services"),
              onTap: () => Navigator.pushNamed(context, Services.pageId)),
          ListTile(
              title: Text("About Us"),
              onTap: () => Navigator.pushNamed(context, AboutUs.pageId)),
          Divider(),
          ListTile(
            title: Text("Close"),
            onTap: () => Navigator.pop(context),
          )
        ],
      )),
      body: Container(
        child: Center(
          child: Text("This is HomePage"),
        ),
      ),
    );
  }
}
