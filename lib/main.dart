import 'package:flutter/material.dart';

import './body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("What strength of nicopods suits for you?",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.yellow)),
        ),
        body: Body(),
      ),
    );
  }
}
