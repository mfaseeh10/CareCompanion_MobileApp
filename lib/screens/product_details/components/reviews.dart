import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/helper/data.dart';
import 'package:med_delivery_fyp/shared_widgets/custom_appbar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../../shared_widgets/reviewUI.dart';

class Reviews extends StatefulWidget {
  Reviews({Key? key}) : super(key: key);

  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  bool isMore = false;
  List<double> ratings = [0.1, 0.3, 0.5, 0.7, 0.9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryWhiteColor,
      appBar: AppBar(
        title: Text(
          "Reviews",
          style: TextStyle(
              color: kPrimaryDarkColor,
              fontWeight: FontWeight.bold,
              fontFamily: 'Muli'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
              itemCount: AppData.reviewList.length,
              itemBuilder: (context, index) {
                return ReviewUI(
                  name: AppData.reviewList[index].name,
                  date: AppData.reviewList[index].date,
                  comment: AppData.reviewList[index].comment,
                  onPressed: () => print("More Action $index"),
                  onTap: () => setState(() {
                    isMore = !isMore;
                  }),
                  isLess: isMore,
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 2.0,
                  color: kPrimaryDarkColor,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
