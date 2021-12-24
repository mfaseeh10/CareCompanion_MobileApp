import 'package:flutter/material.dart';

import '../../../config/constants.dart';

class PromotionSlide extends StatelessWidget {
  const PromotionSlide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PromotionSlideCard(
            image:
                'https://icms-image.slatic.net/images/ims-web/62906622-61e3-457c-a7a0-947b9186067a.png',
            press: () {},
          ),
          PromotionSlideCard(
            image:
                'https://media.istockphoto.com/vectors/big-christmas-sale-of-medicines-and-medical-services-black-friday-a-vector-id1280506452',
            press: () {},
          ),
          PromotionSlideCard(
            image:
                'https://www.couponmoto.com/boards/wp-content/uploads/2019/03/pharmeasy-first-medicines-order.png',
            press: () {},
          ),
          PromotionSlideCard(
            image:
                'https://www.couponmoto.com/boards/wp-content/uploads/2019/03/zoylo-coupons-3.png',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class PromotionSlideCard extends StatelessWidget {
  const PromotionSlideCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: myDefaultPadding,
          top: myDefaultPadding / 2,
          bottom: myDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(image),
          ),
        ),
      ),
    );
  }
}
