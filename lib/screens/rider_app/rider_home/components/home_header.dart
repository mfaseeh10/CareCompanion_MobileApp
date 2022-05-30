import 'package:flutter/material.dart';
//import 'package:grocery_app/screens/notifications/notification_screen.dart';

import '../../../../config/constants.dart';
import '../../../../config/size_config.dart';
import '../../../../shared_widgets/search_field.dart';

class HomeHeader extends StatelessWidget {
  final String text;

  const HomeHeader({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchField(
            searchText: text,
          ),
        ],
      ),
    );
  }
}
