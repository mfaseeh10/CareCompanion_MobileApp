import 'package:flutter/material.dart';
import '../../../config/constants.dart';

class PharmNearYou extends StatelessWidget {
  const PharmNearYou({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PharmNearYouCard(
            title: 'Dvago',
            distance: 3.4,
            //image: 'assets/images/img1.jpg',
            image:
                'https://lh5.googleusercontent.com/p/AF1QipNKw2SWxxguHMWBU2j0oSPMKGRbiAKvHCdt9K7-',
            deliveryFee: 50,
            press: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => DetailsScreen(
              //       imgUrl:
              //           'https://www.shoecarnival.com/dw/image/v2/BBSZ_PRD/on/demandware.static/-/Sites-scvl-master-catalog/default/dw1751e253/108346_217901_3.jpg',
              //     ),
              //   ),
              // );
            },
          ),
          PharmNearYouCard(
            title: 'The Chemist',
            distance: 0.9,
            // image: 'assets/images/img2.jpg',
            image:
                'https://scontent.fkhi17-1.fna.fbcdn.net/v/t1.6435-9/117592388_164394745157099_8893491325599511463_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHV2jqx84hnxZMhOjkIUf9inIUDCn_5LT-chQMKf_ktP7_DyufZ49fj0nrLdJY3Id6Y5TS0LfahF5SQUyZ5BFwC&_nc_ohc=GBpD5dkQwnkAX_czL4P&_nc_ht=scontent.fkhi17-1.fna&oh=00_AT8wchbiRV6DnNENMclSodxEOZm6lZEKvJzTK7VeH2vWcw&oe=61E65EBD',
            deliveryFee: 65,
            press: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => DetailsScreen(
              //       imgUrl:
              //           'https://www.shoecarnival.com/dw/image/v2/BBSZ_PRD/on/demandware.static/-/Sites-scvl-master-catalog/default/dwc2399abf/102361_235341_3.jpg',
              //     ),
              //   ),
              // );
            },
          ),
          PharmNearYouCard(
            title: 'Lyfe Pharmacy',
            distance: 2.8,
            // image: 'assets/images/img2.jpg',
            image:
                'https://scontent.fkhi17-1.fna.fbcdn.net/v/t1.6435-9/cp0/e15/q65/s320x320/132023170_103583375002197_1153214483022115650_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=dd9801&efg=eyJpIjoidCJ9&_nc_eui2=AeFzrsXd5asgdhxzKcF6HixesY9_dX0u576xj391fS7nviruf2yQ8M7Dmbb8uDh1z6bHK0KddKOuL3uDd_rvePg7&_nc_ohc=9kBqLlCCJjYAX93qcd3&_nc_ht=scontent.fkhi17-1.fna&oh=00_AT8Q2YlV3i2JTm8o8X9inrgiWw5IUEvQEWf9E101J70OHA&oe=61E3451F',
            deliveryFee: 45,
            press: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => DetailsScreen(
              //       imgUrl:
              //           'https://www.shoecarnival.com/dw/image/v2/BBSZ_PRD/on/demandware.static/-/Sites-scvl-master-catalog/default/dwc2399abf/102361_235341_3.jpg',
              //     ),
              //   ),
              // );
            },
          ),
        ],
      ),
    );
  }
}

class PharmNearYouCard extends StatelessWidget {
  const PharmNearYouCard({
    Key? key,
    required this.image,
    required this.title,
    required this.deliveryFee,
    required this.distance,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final int deliveryFee;
  final double distance;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: myDefaultPadding,
        top: myDefaultPadding / 2,
        bottom: myDefaultPadding,
        //right: myDefaultPadding * 1.25,
      ),
      width: size.width * 0.65,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: size.width * 0.65,
            height: size.height * 0.15,
            child: ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          GestureDetector(
            onTap: press,
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
                          text: '$title\n'.toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontFamily: 'muli',
                            color: kPrimaryColor,
                          ),
                        ),
                        TextSpan(
                          text: '$distance km'.toUpperCase(),
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
                    'Delivery fee: Rs.$deliveryFee',
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
