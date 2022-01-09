class OrderDetail {
  late String id;
  late String orderId;
  late String productId;
  late String variantId;
  late String total;
  late int quantity;

  OrderDetail(
      {required this.id, required this.orderId, required this.productId, required this.variantId, required this.total, required this.quantity});

  OrderDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderId = json['order_id'];
    productId = json['product_id'];
    variantId = json['variant_id'].toString();
    total = json['total'].toString();
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['orderId'] = this.orderId;
    data['productId'] = this.productId;
    data['variantId'] = this.variantId;
    data['total'] = this.total;
    data['quantity'] = this.quantity;
    return data;
  }
}