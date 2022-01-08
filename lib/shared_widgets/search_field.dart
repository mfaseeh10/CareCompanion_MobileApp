import 'package:flutter/material.dart';
import '../../../config/constants.dart';
import '../../../config/size_config.dart';

class SearchField extends StatelessWidget {
  final String searchText;
  const SearchField({Key? key, required this.searchText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.85,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10),
                vertical: getProportionateScreenWidth(9)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: searchText,
            suffixIcon: Icon(
              Icons.search,
              color: kPrimaryDarkColor,
            )),
      ),
    );
  }
}
