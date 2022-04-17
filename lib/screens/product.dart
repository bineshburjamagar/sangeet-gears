import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final String price;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product> products = [
  Product(
    id: 1,
    images: [
      "assets/images/prakriti.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Mantra-Prakriti ",
    price: 'Rs 10,000',
    description: description,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/misfits.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "misfits T-shirt",
    price: 'Rs 1,000',
    description: description,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/gorkhacomp.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gorkha Comp",
    price: 'Rs 9,999',
    description: description,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/stguitar.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "ST Customs",
    description: description,
    price: 'Rs 5,50,000',
  ),
];

const String description = "HAPPY SHOPPING";
