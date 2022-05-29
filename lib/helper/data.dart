import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/model/notifications.dart';
import 'package:med_delivery_fyp/model/order_detail.dart';
import 'package:med_delivery_fyp/model/orders.dart';
import 'package:med_delivery_fyp/model/pharmacies.dart';
import 'package:med_delivery_fyp/model/product.dart';
import 'package:med_delivery_fyp/model/product_type.dart';
import 'package:med_delivery_fyp/model/review.dart';
import 'package:med_delivery_fyp/model/user.dart';

class AppData {
  static List<Map<String, String>> splashData = [
    {
      "text": "Welcome here, Let’s buy medicines!",
      "image": "assets/images/spl_1.png"
    },
    {
      "text": "We help people connect with store \naround Pakistan",
      "image": "assets/images/spl_2.png"
    },
    {
      "text":
          "We show the easy way to shop all medicines you need. \nJust stay at home with us",
      "image": "assets/images/spl_3.png"
    },
  ];

  static List<ProductType> prodType = [
    ProductType(id: 0, name: 'Medicine'),
    ProductType(id: 1, name: 'Health Aid Equipment'),
    ProductType(id: 2, name: 'Consumer Products'),
    ProductType(id: 3, name: 'Headache'),
    ProductType(id: 4, name: 'Homeopathic'),
    ProductType(id: 5, name: 'Fever'),
    ProductType(id: 6, name: 'Joint Pain'),
  ];

  static List<Product> productList = [
    Product(
      id: 4,
      title: 'RISEK CAP 40 MG 14\'S ',
      price: 210.00,
      isFavourite: false,
      images: [
        'https://hol.com.pk/wp-content/uploads/2021/07/Risek-Insta-Sugar-Free-Sachet-40mg-10-s.jpg'
      ],
      prodType: prodType[0],
      isPrescriptionRequired: false,
      description:
          'Omeprazole is 5-methoxy-2-[[(4-methoxy-3, 5-dimethyl-2-pyridinyl) methyl] sulfinyl]-1H-benzimidazole.C17H19N3O3S.',
      sideEffects: 'Headache or abdominal pain may occur',
    ),
    Product(
      id: 0,
      title: 'Hashmi Joshanda\'s',
      price: 180,
      isFavourite: false,
      images: [
        'https://cdn.shopify.com/s/files/1/0514/9422/4052/products/600-x-600_97f3164f-c167-497f-b947-22fe7b81c97b.png?v=1629456133'
      ],
      prodType: prodType[4],
      isPrescriptionRequired: false,
      description: "Homeopathic",
      sideEffects: 'Might feel dizzy.',
    ),
    Product(
      id: 1,
      title: 'Cac1000 Plus Tab-Orange T 10\'s',
      price: 180,
      isFavourite: false,
      images: [
        'https://hol.com.pk/wp-content/uploads/2019/08/Cac-1000-Plus-Tab-1x10-s.jpg'
      ],
      prodType: prodType[0],
      isPrescriptionRequired: false,
      description:
          "Active ingredient: Each tablet contains Paracetamol 500 mg. Other ingredients: Maize starch, potassium sorbate (E 202), purified talc, stearic acid, povidone, starch pregelatinised, hypromellose, triacetin.",
      sideEffects:
          'It can cause agitation, back pain, blindness, dizziness, irritability, lack of co-ordination.',
    ),
    Product(
      id: 2,
      title: 'PANADOL EXTRA TAB 100\'S ',
      price: 200.00,
      isFavourite: false,
      images: [
        'https://hol.com.pk/wp-content/uploads/2019/08/Panadol-extra-tab-100-s.jpg'
      ],
      prodType: prodType[0],
      isPrescriptionRequired: false,
      description:
          "Active ingredient: Each tablet contains Paracetamol 500 mg. Other ingredients: Maize starch, potassium sorbate (E 202), purified talc, stearic acid, povidone, starch pregelatinised, hypromellose, triacetin.",
      sideEffects:
          'It can cause agitation, back pain, blindness, dizziness, irritability, lack of co-ordination.',
    ),
    Product(
      id: 3,
      title: 'Flagyl Tablets 400mg 20X10\'s ',
      price: 25.00,
      isFavourite: false,
      images: [
        'https://hol.com.pk/wp-content/uploads/2019/08/016-1200x1200.jpg'
      ],
      prodType: prodType[0],
      isPrescriptionRequired: false,
      description: 'Metronidazole',
      sideEffects:
          'It can cause agitation, back pain, blindness, dizziness, irritability, lack of co-ordination.',
    ),
    Product(
      id: 4,
      title: 'RISEK CAP 40 MG 14\'S ',
      price: 210.00,
      isFavourite: false,
      images: [
        'https://hol.com.pk/wp-content/uploads/2021/07/Risek-Insta-Sugar-Free-Sachet-40mg-10-s.jpg'
      ],
      prodType: prodType[0],
      isPrescriptionRequired: false,
      description:
          'Omeprazole is 5-methoxy-2-[[(4-methoxy-3, 5-dimethyl-2-pyridinyl) methyl] sulfinyl]-1H-benzimidazole.C17H19N3O3S.',
      sideEffects: 'Headache or abdominal pain may occur',
    ),
    Product(
      id: 5,
      title: 'Ibuprofen ',
      price: 100.00,
      isFavourite: false,
      images: [
        'https://hol.com.pk/wp-content/uploads/2020/03/Brufen-syrp-120ml-1s.jpg'
      ],
      prodType: prodType[0],
      isPrescriptionRequired: false,
      description:
          "Active ingredient: Each tablet contains Paracetamol 500 mg. Other ingredients: Maize starch, potassium sorbate (E 202), purified talc, stearic acid, povidone, starch pregelatinised, hypromellose, triacetin.",
      sideEffects:
          'PEG 6000 Carbopol Ethyl Cellulose Lactose Talc Magnesium Stearate',
    ),
    Product(
      id: 6,
      title: 'XYNOSINE NASAL SPRAY 15ML',
      price: 45.50,
      isFavourite: false,
      images: [
        'https://hol.com.pk/wp-content/uploads/2019/08/xynosine-nasal-spray-15ml-adult-ear-and-nosespray-292-1200x1200.jpg'
      ],
      prodType: prodType[0],
      isPrescriptionRequired: true,
      description:
          "Active ingredient: Each tablet contains Paracetamol 500 mg. Other ingredients: Maize starch, potassium sorbate (E 202), purified talc, stearic acid, povidone, starch pregelatinised, hypromellose, triacetin.",
      sideEffects:
          'It can cause agitation, back pain, blindness, dizziness, irritability, lack of co-ordination.',
    ),
    Product(
      id: 7,
      title: ' Accu-Chek Active Blood Glucose Meter Kit ',
      price: 3599.99,
      isFavourite: false,
      images: [
        'https://medicalsuppliespk.com/wp-content/uploads/2020/10/Accu-Check-glucometer.jpeg'
      ],
      prodType: prodType[1],
      isPrescriptionRequired: false,
      description:
          "Active ingredient: Each tablet contains Paracetamol 500 mg. Other ingredients: Maize starch, potassium sorbate (E 202), purified talc, stearic acid, povidone, starch pregelatinised, hypromellose, triacetin.",
      sideEffects:
          'It can cause agitation, back pain, blindness, dizziness, irritability, lack of co-ordination.',
    ),
  ];

  static User user_1 = User(
    id: 123,
    firstName: 'Faeeh',
    lastName: 'Saleem',
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

  static List<Pharmacies> pharmacyList = [
    Pharmacies(
      id: 0,
      image:
          'https://scontent.fkhi17-1.fna.fbcdn.net/v/t39.30808-6/262562346_638998864179790_749326883565757996_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeGTvEWbSUa4e7wg3FmHU7n9eCm0m5JUGnB4KbSbklQacLs03oAxH8QrS3jZ4PbSKvQYtYWRXMeWQIrhIqewJg9O&_nc_ohc=hZ5qemTM9VAAX8v4dUG&_nc_ht=scontent.fkhi17-1.fna&oh=00_AT9YvuRmtue2KAH6HhlKjyrO681Voktn5rVJIwIexm3ajw&oe=61E2E37D',
      name: 'Dua Medicos',
      deliveryCharge: 25,
      distance: 6.5,
      productList: [],
    ),
    Pharmacies(
      id: 1,
      image:
          'https://lh3.googleusercontent.com/p/AF1QipMqOpsnSBz6Z-9EdwPrbKf1JhF4RzqJkIQkGpOL=w1080-h608-p-no-v0',
      name: 'Faizan Medicos',
      deliveryCharge: 65,
      distance: 9.0,
      productList: [],
    ),
    Pharmacies(
      id: 2,
      image:
          'https://lh5.googleusercontent.com/p/AF1QipNKw2SWxxguHMWBU2j0oSPMKGRbiAKvHCdt9K7-',
      name: 'Dvago',
      deliveryCharge: 50,
      distance: 3.4,
      productList: [],
    ),
    Pharmacies(
      id: 3,
      name: 'The Chemist',
      distance: 0.9,
      image:
          'https://scontent.fkhi17-1.fna.fbcdn.net/v/t1.6435-9/117592388_164394745157099_8893491325599511463_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHV2jqx84hnxZMhOjkIUf9inIUDCn_5LT-chQMKf_ktP7_DyufZ49fj0nrLdJY3Id6Y5TS0LfahF5SQUyZ5BFwC&_nc_ohc=GBpD5dkQwnkAX_czL4P&_nc_ht=scontent.fkhi17-1.fna&oh=00_AT8wchbiRV6DnNENMclSodxEOZm6lZEKvJzTK7VeH2vWcw&oe=61E65EBD',
      deliveryCharge: 65,
      productList: [],
    ),
    Pharmacies(
      id: 4,
      image:
          'https://scontent.fkhi17-1.fna.fbcdn.net/v/t1.6435-9/cp0/e15/q65/s320x320/132023170_103583375002197_1153214483022115650_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=dd9801&efg=eyJpIjoidCJ9&_nc_eui2=AeFzrsXd5asgdhxzKcF6HixesY9_dX0u576xj391fS7nviruf2yQ8M7Dmbb8uDh1z6bHK0KddKOuL3uDd_rvePg7&_nc_ohc=9kBqLlCCJjYAX93qcd3&_nc_ht=scontent.fkhi17-1.fna&oh=00_AT8Q2YlV3i2JTm8o8X9inrgiWw5IUEvQEWf9E101J70OHA&oe=61E3451F',
      name: 'Lyfe Pharmacy',
      deliveryCharge: 45,
      distance: 5.4,
      productList: [],
    ),
  ];

  static List<Review> reviewList = [
    Review(
      name: "John Travolta",
      rating: 3.5,
      date: "01 Jan 2021",
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    Review(
      name: "Scarlett Johansson",
      rating: 2.5,
      date: "21 Feb 2021",
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    Review(
      name: "Jennifer Lawrence",
      rating: 4.5,
      date: "17 Mar 2021",
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    Review(
      name: "Michael Jordan",
      rating: 1.5,
      date: "12 Apr 2021",
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ),
    Review(
      name: "Nicole Kidman",
      rating: 2.0,
      date: "28 May 2021",
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    Review(
      name: "James Franco",
      rating: 4.0,
      date: "14 Nov 2020",
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    Review(
      name: "Margot Robbie",
      rating: 1.0,
      date: "14 Nov 2020",
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    Review(
      name: "Nicolas Cage",
      rating: 3.0,
      date: "14 Nov 2020",
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    Review(
      name: "Emma Stone",
      rating: 5.0,
      date: "14 Nov 2020",
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    Review(
      name: "Charlize Theron",
      rating: 3.5,
      date: "14 Nov 2020",
      comment:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
  ];
}
