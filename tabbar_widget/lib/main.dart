// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Tab> myTab = [
    Tab(
      text: 'Tab 1',
      icon: Icon(Icons.photo),
    ),
    Tab(
      text: 'Tab 2',
      icon: Icon(Icons.folder),
    ),
    Tab(
      text: 'Tab 3',
      icon: Icon(Icons.people),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Apps'),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              // indicatorColor: Colors.red,
              // indicatorWeight: 5,
              indicatorPadding: EdgeInsets.all(5),
              indicator: BoxDecoration(
                color: Colors.amber,
                border: Border(
                    bottom: BorderSide(
                  color: Colors.black,
                  width: 5,
                )),
              ),
              tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('TAB 1'),
              ),
              Center(
                child: Text('TAB 2'),
              ),
              Center(
                child: Text('TAB 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
