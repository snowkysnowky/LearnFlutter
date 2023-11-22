import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = 'Belum Ada Input';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dialog'),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Click');
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('CONFIRM'),
                content: Text('Are you sure to delete this item?'),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        data = 'False';
                      });
                      Navigator.of(context).pop(false);
                    },
                    child: Text('No'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        data = 'True';
                      });

                      Navigator.of(context).pop(true);
                    },
                    child: Text('Yes'),
                  ),
                ],
              );
            },
          ).then((value) {
            return print(value);
          });
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
