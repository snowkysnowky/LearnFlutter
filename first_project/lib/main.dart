// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Apps"),
        ),
        body: Center(
          child: Text(
            "yeedqwdqwdqdqqwdqwdqwdeqdffqqqwfqwaergyihhukebghlebgeijbgehkbl",
            maxLines: 5,
            textAlign: TextAlign.right,
            style: TextStyle(
              backgroundColor: Colors.orange,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
