import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/helper/data.dart';

import 'product.dart';

class Cart {
  final Product product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(product: AppData.productList[0], numOfItem: 2),
  Cart(product: AppData.productList[1], numOfItem: 1),
  Cart(product: AppData.productList[3], numOfItem: 1),
];
