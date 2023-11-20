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
          title: Text("Column"),
        ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Container(
        //       width: 200,
        //       height: 50,
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       width: 50,
        //       height: 50,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 50,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       width: 300,
        //       height: 50,
        //       color: Colors.green,
        //     ),
        //   ],
        // ),

        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Container(
        //       height: 200,
        //       width: 50,
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       height: 50,
        //       width: 50,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 50,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 300,
        //       width: 50,
        //       color: Colors.green,
        //     ),
        //   ],
        // ),

        body: Stack(
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.purple,
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.yellow,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
