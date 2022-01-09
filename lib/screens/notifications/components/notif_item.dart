import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/model/notifications.dart';
// import 'package:intl/intl.dart';
import '../../../config/constants.dart';

class NotifItem extends StatefulWidget {
  final Notifications notifications;
  //final String? notification_text;
  NotifItem(this.notifications);

  @override
  _NotifItemState createState() => _NotifItemState();
}

class _NotifItemState extends State<NotifItem> {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'New Task Alert: \"${widget.notifications.message}\"',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  //      color: kPrimaryColor.withOpacity(0.5),
                ),
              ),
              // Text(
              //   '\$${widget.notifications.amount}',
              //   style: TextStyle(color: kSecondaryColor.withOpacity(1.0)),
              // ),
              Row(
                children: [
                  Icon(
                    Icons.timelapse_rounded,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text('')
                  // '${DateTime.now().day - widget.notifications.createdAt} days ago')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
