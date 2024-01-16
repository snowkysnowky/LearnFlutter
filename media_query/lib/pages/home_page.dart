// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;

    final myAppBar = AppBar(
      title: Text('Media Query'),
    );

    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: (isLandscape)
            ? Column(
                children: [
                  Container(
                    height: bodyHeight * 0.5,
                    width: MediaQueryWidth,
                    color: Colors.amber,
                  ),
                  Container(
                    height: bodyHeight * 0.5,
                    // color: Colors.red,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return GridTile(
                          child: Container(
                            color: Color.fromARGB(255, Random().nextInt(156),
                                Random().nextInt(156), Random().nextInt(156)),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  Container(
                    height: bodyHeight * 0.3,
                    width: MediaQueryWidth,
                    color: Colors.amber,
                  ),
                  Container(
                    height: bodyHeight * 0.7,
                    color: Colors.red,
                    child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(),
                          title: Text(
                            'Halo Semua',
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
