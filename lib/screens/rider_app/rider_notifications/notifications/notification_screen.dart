import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/helper/data.dart';
import 'package:med_delivery_fyp/screens/rider_app/rider_notifications/notifications/components/notif_item.dart';
import '../../../../model/notifications.dart';

class RiderNotificationScreen extends StatelessWidget {
  static String routeName = "/riderNotificationScreen";
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: AppData.orderData.length,
      itemBuilder: (ctx, i) => NotifItem(AppData.notifData[i]),
    );
  }
}
