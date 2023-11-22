// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

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
          title: Text('Dekorasi TextField'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              showCursor: true,
              cursorColor: Colors.amber,
              // cursorWidth: 10,
              // cursorHeight: 25,
              cursorRadius: Radius.circular(20),
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.none,
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  size: 40,
                ),
                // border: OutlineInputBorder(
                //   borderSide: Colors.red,
                // ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),

                prefixIcon: Icon(
                  Icons.abc,
                ),

                suffixIcon: Icon(
                  Icons.remove_red_eye,
                ),
                // prefixIcon: Icon(
                //   Icons.person_2_outlined,
                //   size: 40,
                // ),
                // prefixText: 'Name :',
                hintText: 'Input your name',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                labelText: 'Full Name',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
