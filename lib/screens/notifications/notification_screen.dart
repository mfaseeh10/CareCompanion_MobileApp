import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/helper/data.dart';

import 'components/notif_item.dart';

class NotificationScreen extends StatelessWidget {
  static String routeName = "/notificationScreen";
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: AppData.orderData.length,
      itemBuilder: (ctx, i) => NotifItem(AppData.notifData[i]),
    );
  }
}
