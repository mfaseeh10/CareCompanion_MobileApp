import 'package:flutter/material.dart';

class Pharmacies {
  final int id;
  final String name;
  final double distance;
  final double rating;
  final String image;
  final double deliveryCharge;
  final bool isFavourite;
  final bool isPopular;

  Pharmacies({
    required this.id,
    required this.image,
    required this.name,
    required this.deliveryCharge,
    required this.distance,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
  });
}
