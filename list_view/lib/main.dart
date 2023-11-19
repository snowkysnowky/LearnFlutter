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
          title: const Text('List Tile'),
        ),
        body: ListView(
          children: const [
            ListTile(
              title: Text('Maidah'),
              subtitle: Text(
                'Ini adalah Tulisan',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text('Maidah'),
              subtitle: Text(
                'Ini adalah Tulisan',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text('Maidah'),
              subtitle: Text(
                'Ini adalah Tulisan',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text('Maidah'),
              subtitle: Text('Ini adalah Tulisan'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
          ],
        ),
      ),
    );
  }
}
