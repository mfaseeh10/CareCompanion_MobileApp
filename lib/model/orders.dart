import 'order_detail.dart';

class Order {
  late String id;
  late String userId;
  late String billingAddress;
  late String shippingAddress;
  late String paymentMethod;
  late String status;
  late String orderDate;
  late String deliveryDate;
  late String total;
  late List<OrderDetail> orderDetails;

  Order(
      {required this.id,
      required this.userId,
      required this.billingAddress,
      required this.shippingAddress,
      required this.paymentMethod,
      required this.status,
      required this.orderDate,
      required this.deliveryDate,
      required this.total,
      required this.orderDetails});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    billingAddress = json['billing_address'];
    shippingAddress = json['shipping_address'];
    paymentMethod = json['payment_method'];
    status = json['status'];
    orderDate = json['created_date'];
    deliveryDate = json['delivery_date'];
    total = json['total'].toString();
    if (json['variants'] != null) {
      orderDetails = [];
      json['orderDetails'].forEach((v) {
        orderDetails.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['billingAddress'] = this.billingAddress;
    data['shippingAddress'] = this.shippingAddress;
    data['paymentMethod'] = this.paymentMethod;
    data['status'] = this.status;
    data['orderDate'] = this.orderDate;
    data['deliveryDate'] = this.deliveryDate;
    data['total'] = this.total;
    if (this.orderDetails != null) {
      data['orderDetails'] = this.orderDetails.map((v) => v).toList();
    }
    return data;
  }
}
