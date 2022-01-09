import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/model/notifications.dart';
import 'package:med_delivery_fyp/model/order_detail.dart';
import 'package:med_delivery_fyp/model/orders.dart';
import 'package:med_delivery_fyp/model/product.dart';
import 'package:med_delivery_fyp/model/user.dart';

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

  static User user_1 = User(
    id: 123,
    userEmail: 'faseeh@gmail.com',
    username: 'mfaseeh10',
    userImage:
        'https://image.shutterstock.com/image-photo/close-portrait-young-happy-cheerful-260nw-609133178.jpg',
    address: 'plot sc111, 8th Street, Arizona',
  );

  static List<OrderDetail> orderDetailData = [
    OrderDetail(
        id: '1',
        productId: '1',
        variantId: '1',
        quantity: 2,
        orderId: '1',
        total: '200'),
    OrderDetail(
        id: '2',
        productId: '4',
        variantId: '4',
        quantity: 1,
        orderId: '2',
        total: '200'),
    OrderDetail(
        id: '3',
        productId: '4',
        variantId: '5',
        quantity: 1,
        orderId: '2',
        total: '400'),
  ];

  static List<Notifications> notifData = [
    Notifications(
        id: '1',
        userId: '1',
        title: '',
        message: 'Weekly photos of supermarket products',
        createdAt: DateTime.parse("2021-11-03 20:18:04Z").toString(),
        modifiedAt: DateTime.parse("2021-11-11 20:18:04Z").toString(),
        seen: false),
    Notifications(
        id: '2',
        userId: '1',
        title: '',
        message: 'We help people connect with store \naround Pakistan',
        createdAt: DateTime.parse("2021-11-11 20:18:04Z").toString(),
        modifiedAt: DateTime.parse("2021-11-11 20:18:04Z").toString(),
        seen: false),
  ];

  static List<Order> orderData = [
    Order(
        id: '1',
        total: '280',
        status: 'Delivered',
        paymentMethod: 'COD',
        shippingAddress: user_1.address,
        billingAddress: user_1.address,
        userId: '1',
        orderDate: DateTime.now().toString(),
        deliveryDate: '15/12/2021',
        orderDetails: orderDetailData
            .where((element) => element.orderId == '1')
            .toList()),
    Order(
        id: '2',
        total: '600',
        status: 'Pending',
        paymentMethod: 'COD',
        shippingAddress: user_1.address,
        billingAddress: user_1.address,
        userId: '1',
        orderDate: DateTime.now().toString(),
        deliveryDate: '',
        orderDetails: orderDetailData
            .where((element) => element.orderId == '2')
            .toList()),
  ];
}
