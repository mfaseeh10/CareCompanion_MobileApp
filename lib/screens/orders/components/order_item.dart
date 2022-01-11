import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/model/order_detail.dart';
import 'package:med_delivery_fyp/model/orders.dart';

class OrderItem extends StatefulWidget {
  final Order order;
  final List<OrderDetail> orderDetails;
  OrderItem(this.order, this.orderDetails);

  @override
  _OrderItemState createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  var _expanded = false;

  getQuantitySum() {
    var total = 0;
    widget.orderDetails.forEach((element) {
      total += element.quantity;
    });
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Card(
        borderOnForeground: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5.0,
        margin: EdgeInsets.all(5),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order #XOX${widget.order.total}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kPrimaryColor),
                  ),
                  Text(
                    DateFormat('dd/MM/yyyy hh:mm')
                        .format(DateTime.parse(widget.order.orderDate)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Quantity: ${getQuantitySum()}',
                  ),
                  Text('Rs.${widget.order.total} ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
