import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../config/constants.dart';

class ReviewUI extends StatelessWidget {
  final String name, date, comment;

  final VoidCallback onTap, onPressed;
  final bool isLess;
  const ReviewUI({
    Key? key,
    required this.name,
    required this.date,
    required this.comment,
    required this.onTap,
    required this.isLess,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 2.0,
        bottom: 2.0,
        left: 16.0,
        right: 0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(
                      fontFamily: 'Muli',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryDarkColor),
                ),
              ),
              IconButton(
                onPressed: onPressed,
                icon: Icon(Icons.more_vert),
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Text(
                date,
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Muli',
                    color: kPrimaryLightColor),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          GestureDetector(
            onTap: onTap,
            child: isLess
                ? Text(
                    comment,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: kPrimaryGrayColor,
                      fontFamily: 'Muli',
                    ),
                  )
                : Text(
                    comment,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: kPrimaryLightColor,
                      fontFamily: 'Muli',
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
