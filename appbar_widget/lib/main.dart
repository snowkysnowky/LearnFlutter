import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            color: Colors.amber,
          ),
          leadingWidth: 100,
          title: Container(
            // width: 35,
            height: 35,
            color: Colors.red,
          ),
          // titleSpacing: 0,
          centerTitle: false,
          actions: [
            Container(
                width: 50,
                // height: 35,
                color: Colors.green),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Container(
              width: 50,
              height: 200,
              color: Colors.black,
            ),
          ),
          flexibleSpace: Container(
            // width: 300,
            height: 200,
            color: Colors.brown,
          ),
        ),
      ),
    );
  }
}
