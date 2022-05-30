// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

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

  User copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? username,
    String? userEmail,
    String? userImage,
    String? address,
  }) {
    return User(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      username: username ?? this.username,
      userEmail: userEmail ?? this.userEmail,
      userImage: userImage ?? this.userImage,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'userEmail': userEmail,
      'userImage': userImage,
      'address': address,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      username: map['username'] as String,
      userEmail: map['userEmail'] as String,
      userImage: map['userImage'] as String,
      address: map['address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, username: $username, userEmail: $userEmail, userImage: $userImage, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.username == username &&
        other.userEmail == userEmail &&
        other.userImage == userImage &&
        other.address == address;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        username.hashCode ^
        userEmail.hashCode ^
        userImage.hashCode ^
        address.hashCode;
  }
}
