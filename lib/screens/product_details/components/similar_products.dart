import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/screens/product_details/product_detail_screen.dart';
import '../../../helper/data.dart';
import '../../../config/constants.dart';
import '../../../model/product.dart';

class SimilarProducts extends StatelessWidget {
  SimilarProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight * .3,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 4 / 3,
            mainAxisSpacing: 30,
            crossAxisSpacing: 20),
        padding: EdgeInsets.only(left: 10),
        scrollDirection: Axis.horizontal,
        children: AppData.productList
            .map(
              (product) => ProductCard(
                product: product,
              ),
            )
            .toList(),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;
  //final ValueChanged<Product> onSelected;
  ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          ProductDetailScreen.routeName,
          arguments: product,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: kPrimaryColor.withOpacity(0.2),
                blurRadius: 20,
                spreadRadius: 5),
          ],
        ),
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(height: 0),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: kPrimaryColor.withOpacity(0.5),
                        ),
                        Image.network(
                          product.images[0],
                        )
                      ],
                    ),
                  ),

                  // SizedBox(height: 5),
                  Text(
                    product.title,
                    style: TextStyle(
                      fontFamily: 'Muli',
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Rs.${product.price}",
                    style: TextStyle(
                      color: kPrimaryColor.withOpacity(0.8),
                      fontFamily: 'Muli',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                top: 0,
                child: IconButton(
                  icon: Icon(
                    product.isFavourite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: product.isFavourite ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
