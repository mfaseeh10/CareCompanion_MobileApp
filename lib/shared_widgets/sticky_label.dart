import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';

class StickyLabel extends StatelessWidget {
  final String text;
  final Color textColor;
  const StickyLabel({
    //required Key key,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        top: kFixPadding,
      ),
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontSize: 18.0, fontWeight: FontWeight.w600),
      ),
    );
  }
}
