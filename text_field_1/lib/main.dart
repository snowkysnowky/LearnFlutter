// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fitur TextField'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              autocorrect: true,
              autofocus: true,
              enableSuggestions: true,
              enableInteractiveSelection: true,
              enabled: true,
              obscureText: true,
              obscuringCharacter: '#',
              keyboardType: TextInputType.phone,
              readOnly: false,
            ),
          ),
        ),
      ),
    );
  }
}
