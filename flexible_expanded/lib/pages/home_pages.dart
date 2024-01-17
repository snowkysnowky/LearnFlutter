import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible & Expanded"),
      ),
      body: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.red,
              child: Text("Text 1 - perpanjang"),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.green,
              child: Text("Text 2 - sedikit"),
            ),
          ),
          Expanded(
            // fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.amber,
              child: Text("Text 3"),
            ),
          )
        ],
      ),
    );
  }
}
