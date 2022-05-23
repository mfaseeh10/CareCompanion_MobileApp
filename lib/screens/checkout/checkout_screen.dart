import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/helper/data.dart';
import 'package:med_delivery_fyp/screens/order_placed/order_placed_screen.dart';
// import 'payment_screen.dart';
// import 'my_orders_screen.dart';

class CheckoutScreen extends StatefulWidget {
  static String routeName = "/checkout";

  @override
  State<StatefulWidget> createState() => LunchState();
}

class LunchState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Icon(
                Icons.arrow_back,
                color: kPrimaryWhiteColor,
              ),
            ),
          ),
          title: Text(
            "Checkout",
            style: TextStyle(color: kPrimaryWhiteColor, fontFamily: "Muli"),
          ),
        ),
        body: initScreen());
  }

  initScreen() {
    return new Container(
        child: Wrap(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(top: 20.0, right: 30.0, left: 30.0),
            child: Text(
              AppData.user_1.address,
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            )),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Cost: ",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Text(
                "160.00",
                style: TextStyle(
                  color: kPrimaryBlackColor,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Discount: ",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Text(
                "10%",
                style: TextStyle(
                  color: kPrimaryBlackColor,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Shipping: ",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Text(
                "10.00",
                style: TextStyle(
                  color: kPrimaryBlackColor,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Total: ",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "170.00",
                style: TextStyle(
                    color: kPrimaryBlackColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Center(
            child: Container(
                margin: EdgeInsets.only(top: 30.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, OrderPlacedScreen.routeName);
                  }, // When Click on Button goto Login Screen

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: kPrimaryGradientColor,
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Container(
                      constraints: const BoxConstraints(
                          maxWidth: 350.0,
                          minHeight: 40.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'Buy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: kPrimaryWhiteColor, fontSize: 18.0),
                      ),
                    ),
                  ),
                ))),
      ],
    ));
  }
}
