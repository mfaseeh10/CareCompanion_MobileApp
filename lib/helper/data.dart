import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/model/product.dart';

class AppData {
  static List<Map<String, String>> splashData = [
    {"text": "Welcome here, Let’s shop!", "image": "assets/images/spl_1.png"},
    {
      "text": "We help people connect with store \naround Pakistan",
      "image": "assets/images/spl_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/spl_3.png"
    },
  ];

  static List<Product> productList = [
    Product(
        id: 1,
        title: 'Cac1000 Plus Tab-Orange T 10\'s',
        price: 180,
        isFavourite: false,
        images: [
          'https://hol.com.pk/wp-content/uploads/2019/08/Cac-1000-Plus-Tab-1x10-s.jpg'
        ]),
    Product(
        id: 2,
        title: 'PANADOL EXTRA TAB 100\'S ',
        price: 200.00,
        isFavourite: false,
        images: [
          'https://hol.com.pk/wp-content/uploads/2019/08/Panadol-extra-tab-100-s.jpg'
        ]),
    Product(
        id: 3,
        title: 'XYNOSINE NASAL SPRAY 15ML',
        price: 45.50,
        isFavourite: false,
        images: [
          'https://hol.com.pk/wp-content/uploads/2019/08/xynosine-nasal-spray-15ml-adult-ear-and-nosespray-292-1200x1200.jpg'
        ]),
    Product(
        id: 4,
        title: ' Accu-Chek Active Blood Glucose Meter Kit ',
        price: 3599.99,
        isFavourite: false,
        images: [
          'https://medicalsuppliespk.com/wp-content/uploads/2020/10/Accu-Check-glucometer.jpeg'
        ]),
  ];
}
