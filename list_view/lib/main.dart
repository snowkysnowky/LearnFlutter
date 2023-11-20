import 'package:flutter/material.dart';

void main() {
<<<<<<< HEAD
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
=======
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
>>>>>>> 8c0f9946493809daeb2b8551bb247b6227eaca1c

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
<<<<<<< HEAD
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
=======
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
>>>>>>> 8c0f9946493809daeb2b8551bb247b6227eaca1c
        ),
      ),
    );
  }
}
