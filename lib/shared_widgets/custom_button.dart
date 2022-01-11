import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double elevation;
  final double borderRadius;

  const CustomButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.elevation = 0.0,
      this.borderRadius = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: elevation,
      fillColor: kPrimaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      child: Padding(
        padding: const EdgeInsets.only(top: 9, bottom: 10, left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'NunitoSans',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
