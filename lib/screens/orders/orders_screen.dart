import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/helper/data.dart';

import './components/order_item.dart';
import '/config/constants.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
        backgroundColor: kPrimaryColor,
        title: Text('My Orders',
            style: TextStyle(
              fontFamily: 'Muli',
              fontWeight: FontWeight.w700,
              color: kPrimaryWhiteColor,
            )),
      ),
      body: ListView.builder(
        itemCount: AppData.orderData.length,
        itemBuilder: (ctx, i) => OrderItem(
            AppData.orderData[i],
            AppData.orderDetailData
                .where((element) => element.orderId == AppData.orderData[i].id)
                .toList()),
      ),
    );
  }
}
