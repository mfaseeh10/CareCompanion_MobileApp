import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/model/pharmacies.dart';
import 'package:med_delivery_fyp/screens/pharmacy_home_screen/pharm_home_screen.dart';

class PharmacyCard extends StatelessWidget {
  const PharmacyCard({Key? key, required this.pharcard
      // required this.image,
      // required this.title,
      // required this.deliveryFee,
      // required this.distance,
      // required this.press,
      })
      : super(key: key);

  final Pharmacies pharcard;
  // final String image, title;
  // final int deliveryFee;
  // final double distance;
  // final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        //left: myDefaultPadding,
        top: myDefaultPadding / 2,
        bottom: myDefaultPadding,
        //right: myDefaultPadding * 1.25,
      ),
      width: SizeConfig.screenWidth,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight * 0.25,
            child: ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                pharcard.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                PharmacyHome.routeName,
                arguments: pharcard,
              );
            },
            child: Container(
              width: size.width,
              padding: EdgeInsets.all(myDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.15),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${pharcard.name} \n'.toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontFamily: 'muli',
                            color: kPrimaryGrayColor,
                          ),
                        ),
                        TextSpan(
                          text: '${pharcard.distance} km'.toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'muli',
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Spacer(),
                  Text(
                    'Delivery fee: Rs.${pharcard.deliveryCharge}',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'muli',
                      color: kPrimaryColor.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
