import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Yohanes",
      "Age": 22,
      "favColor": [
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue"
      ],
    },
    {
      "Name": "Josep",
      "Age": 27,
      "favColor": ["Green", "White", "Amber"],
    },
    {
      "Name": "Yuri",
      "Age": 21,
      "favColor": [
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue"
      ],
    },
    {
      "Name": "Yohanes",
      "Age": 22,
      "favColor": [
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue"
      ],
    },
    {
      "Name": "Josep",
      "Age": 27,
      "favColor": ["Green", "White", "Amber"],
    },
    {
      "Name": "Yuri",
      "Age": 21,
      "favColor": [
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue"
      ],
    },
    {
      "Name": "Yohanes",
      "Age": 22,
      "favColor": [
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue"
      ],
    },
    {
      "Name": "Josep",
      "Age": 27,
      "favColor": ["Green", "White", "Amber"],
    },
    {
      "Name": "Yuri",
      "Age": 21,
      "favColor": [
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue",
        "Black",
        "Red",
        "Blue"
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ID Apps"),
        ),
        body: ListView(
          children: myList.map((data) {
            print(data['favColor']);
            List myFavColor = data['favColor'];

            return Card(
              margin: EdgeInsets.all(15),
              color: Colors.blue.withOpacity(0.5),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name: ${data['Name']}'),
                            Text('Age: ${data['Age']}'),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myFavColor.map((color) {
                          return Container(
                            color: Colors.amber,
                            margin: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 8,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
