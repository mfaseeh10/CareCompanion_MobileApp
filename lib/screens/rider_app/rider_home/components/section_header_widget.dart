import 'package:flutter/material.dart';

import '../../../../config/constants.dart';

class SectionHeaderWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const SectionHeaderWidget({
    required Key key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: kTextColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          onPressed != null
              ? FlatButton(
                  onPressed: onPressed,
                  child: Text(
                    'See All',
                    style: TextStyle(
                      color: kPrimaryLightColor,
                      fontSize: 12,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
