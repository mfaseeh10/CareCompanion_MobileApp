// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/helper/data.dart';
import 'package:med_delivery_fyp/screens/order_placed/order_placed_screen.dart';

import '../../model/orders.dart';
// import 'my_orders_screen.dart';

class OrderDetailsScreen extends StatefulWidget {
  static String routeName = "/order_details";
  // final Order userOrder;
  // const OrderDetailsScreen({
  //   Key? key,
  //   required this.userOrder,
  // }) : super(key: key);
  @override
  State<StatefulWidget> createState() => LunchState();
}

class LunchState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Order;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Icon(
                Icons.arrow_back,
                color: kPrimaryWhiteColor,
              ),
            ),
          ),
          title: Text(
            "Order Detail",
            style: TextStyle(color: kPrimaryWhiteColor, fontFamily: "Muli"),
          ),
        ),
        body: initScreen(args));
  }

  initScreen(Order order) {
    return new Container(
        child: Wrap(
      children: <Widget>[
        Card(
          margin: EdgeInsets.only(left: 18, right: 18, top: 18),
          elevation: 0.9,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(right: 10.0, left: 10.0),
                      child: Text(
                        "Address:",
                        style:
                            TextStyle(color: kPrimaryGrayColor, fontSize: 18.0),
                      )),
                ],
              ),
              Container(
                  padding: EdgeInsets.only(top: 20.0, left: 10.0, bottom: 10.0),
                  child: Text(
                    order.billingAddress,
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  )),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Order id: ",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Text(
                order.id,
                style: TextStyle(
                  color: kPrimaryBlackColor,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Order date: ",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Text(
                order.orderDate.substring(0, 16),
                style: TextStyle(
                  color: kPrimaryBlackColor,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Status: ",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Text(
                order.status,
                style: TextStyle(
                  color: kPrimaryBlackColor,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Payment Method: ",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Text(
                order.paymentMethod,
                style: TextStyle(
                  color: kPrimaryBlackColor,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Total: ",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Rs.${order.total}",
                style: TextStyle(
                    color: kPrimaryBlackColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
