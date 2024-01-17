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
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;
    final myAppBar = AppBar(
      title: const Text("Layout Builder"),
    );
    final heightBody = heightApp - paddingTop - myAppBar.preferredSize.height;

    return Scaffold(
      appBar: myAppBar,
      body: Container(
        width: widthApp,
        height: heightBody * 0.3,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyContainer(widthApp, heightBody),
            MyContainer(widthApp, heightBody),
            MyContainer(widthApp, heightBody),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final double widthApp;
  final double heightApp;
  const MyContainer(this.widthApp, this.heightApp, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: widthApp * 0.25,
          height: constraints.maxHeight * 0.5,
          color: Colors.amber,
        );
      },
    );
  }
}
