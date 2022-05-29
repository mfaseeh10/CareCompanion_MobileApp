import 'package:flutter/material.dart';

class User {
  final int id;
  final String firstName;
  final String lastName;
  final String username;
  final String userEmail;
  final String userImage;
  final String address;

  // final List<Color> colors;
  // final double rating;
  // final double price;
  // int quantity;
  // final bool isFavourite;
  // final bool isPopular;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.userEmail,
    required this.userImage,
    required this.address,
  });
}
