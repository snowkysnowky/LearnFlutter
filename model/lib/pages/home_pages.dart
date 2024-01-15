// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:model/models/product.dart';

class HomePage extends StatelessWidget {
  final Faker faker = Faker();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(100, (index) {
      return Product(
        faker.food.restaurant(),
        Random().nextInt(100000),
        faker.lorem.sentence(),
        "https://picsum.photos/id/$index/200",
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Model'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.network(dummyData[index].imageURL),
            footer: Container(
              height: 80,
              color: Colors.green.withOpacity(0.5),
              alignment: Alignment.center,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      dummyData[index].judul,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "RP ${dummyData[index].harga}",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      dummyData[index].deskripsi,
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: dummyData.length,
      ),
    );
  }
}
