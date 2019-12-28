import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  static final String pageId = "aboutus";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("This is About Us page"),
      ),
    );
  }
}
