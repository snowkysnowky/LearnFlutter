// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Product {
  @required
  String judul;
  @required
  String imageURL;
  @required
  int harga;
  @required
  String deskripsi;

  Product(this.judul, this.harga, this.deskripsi, this.imageURL);
}
