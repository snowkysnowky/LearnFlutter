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
          title: Text('Image'),
        ),
        body: ListView(
          children: [
            Container(
              width: 300,
              height: 500,
              color: Colors.red,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage('images/images.jpg'),
              ),
            ),
            Container(
              width: 300,
              height: 500,
              color: Colors.blue,
              child: Image(
                image: NetworkImage('https://picsum.photos/200/300'),
              ),
            ),
            Container(
              width: 300,
              height: 500,
              color: Colors.green,
              child: Image.asset('images/images.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
