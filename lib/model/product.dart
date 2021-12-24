import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final String description;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final double price;
  int quantity;
  final bool isFavourite;
  final bool isPopular;

  Product({
    required this.id,
    required this.images,
    this.colors = const [Colors.white],
    this.rating = 0.0,
    this.quantity = 0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    this.description = '',
  });
}
