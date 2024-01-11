// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey,
              // height: 100,
              // width: 1000,
              child: Switch(
                activeColor: Colors.amber,
                activeTrackColor: Colors.green,
                activeThumbImage: AssetImage('images/correct.png'),
                inactiveThumbColor: Colors.indigo,
                inactiveTrackColor: Colors.red,
                inactiveThumbImage: AssetImage('images/wrong.png'),
                value: statusSwitch,
                onChanged: (value) {
                  setState(() {
                    statusSwitch = !statusSwitch;
                  });
                  print(statusSwitch);
                },
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              (statusSwitch == true) ? 'Switch On' : 'Switch Off',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
