// ignore_for_file: prefer_const_constructors

import 'package:drawer/pages/setting_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        // leading: Icon(Icons.menu),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 120,
              color: Colors.red,
              alignment: Alignment.bottomLeft,
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Home(),
                ));
              },
              leading: Icon(
                Icons.home,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => SettingPage(),
                ));
              },
              leading: Icon(
                Icons.settings,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Some Text Here',
          style: TextStyle(
            fontSize: 35,
          ),
        ),
      ),
    );
  }
}
