// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:theme/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        // brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // visualDensity: VisualDensity.comfortable,
        // visualDensity: VisualDensity.compact,
        // visualDensity: VisualDensity.standard,
        // visualDensity: VisualDensity(horizontal: 0, vertical: 0),
        // primarySwatch: Colors.blueGrey,
        // primarySwatch: MaterialColor(
        //   0xFFF5E0C3,
        //   <int, Color>{
        //     50: Color(0x1a5D4524),
        //     100: Color(0xa15D4524),
        //     200: Color(0xaa5D4524),
        //     300: Color(0xaf5D4524),
        //     400: Color(0x1a483112),
        //     500: Color(0xa1483112),
        //     600: Color(0xaa483112),
        //     700: Color(0xff483112),
        //     800: Color(0xaf2F1E06),
        //     900: Color(0xff2F1E06),
        //   },
        // ),
        // primaryColor: Color(0xff5D4524),
        appBarTheme: AppBarTheme(
            color: Colors.amber,
            titleTextStyle: TextStyle(
              fontFamily: 'Ranmor',
              color: Colors.green,
            )),
        textTheme: TextTheme(
            bodyMedium: TextStyle(
          color: Colors.red,
          fontFamily: 'Foxgrab',
        )),
      ),
    );
  }
}
