import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/helper/data.dart';

import './components/order_item.dart';
import '/config/constants.dart';

class RiderOrdersScreen extends StatelessWidget {
  static const routeName = '/riderOrders';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
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
