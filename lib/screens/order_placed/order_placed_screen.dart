import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/size_config.dart';

import 'components/body.dart';

class OrderPlacedScreen extends StatelessWidget {
  static String routeName = "/order_placed";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Order Placed!"),
      ),
      body: Body(),
    );
  }
}
