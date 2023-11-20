import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.amber
  ];

  final List<Widget> myWidget = List.generate(
    100,
    (index) => Text(
      index.toString(),
      style: TextStyle(
        fontSize: 20 +
            double.parse(
              index.toString(),
            ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List View"),
        ),
        // body: ListView.separated(
        //   separatorBuilder: (context, index) {
        //     return const Divider(
        //       color: Colors.black,
        //     );
        //   },
        //   itemCount: myColor.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       height: 300,
        //       width: 300,
        //       color: myColor[index],
        //     );
        //   },
        // ),

        body: ListView(
          children: myWidget,
        ),
      ),
    );
  }
}
