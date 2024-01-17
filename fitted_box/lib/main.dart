import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fitted Box"),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 300,
          height: 110,
          child: Center(
            child: FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.fill,
              child: Image.network("https://picsum.photos/500/500"),
            ),
          ),
        ),
      ),
    );
  }
}
