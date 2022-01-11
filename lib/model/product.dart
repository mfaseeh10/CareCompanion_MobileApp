import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/model/product_type.dart';

class Product {
  final int id;
  final String title;
  final String description;
  final String sideEffects;
  final List<String> images;
  //final List<Color> colors;
  final ProductType prodType;
  final double rating;
  final double price;
  int quantity;
  final bool isFavourite;
  final bool isPopular;
  final bool isPrescriptionRequired;

  Product({
    required this.id,
    required this.images,
    required this.prodType,
    //this.colors = const [Colors.white],
    this.rating = 0.0,
    this.quantity = 0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.isPrescriptionRequired,
    required this.title,
    required this.price,
    this.description = '',
    this.sideEffects = '',
  });
}
