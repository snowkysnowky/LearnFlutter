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
          title: const Text("List Tile"),
        ),
        body: ListView(
          children: const [
            ListTile(
              title: Text("Maria Silvi"),
              subtitle: Text("Ini adalah text"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            ListTile(
              title: Text("Maria Silvi"),
              subtitle: Text("Ini adalah text"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
          ],
        ),
      ),
    );
  }
}
