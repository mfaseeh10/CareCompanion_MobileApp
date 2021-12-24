import 'package:flutter/material.dart';
//import 'package:grocery_app/screens/notifications/notification_screen.dart';
import '../../../config/size_config.dart';
import '../../../shared_widgets/shared_widgets.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchField(),
        ],
      ),
    );
  }
}
