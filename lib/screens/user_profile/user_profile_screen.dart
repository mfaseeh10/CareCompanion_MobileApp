import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/model/user.dart';
import 'package:med_delivery_fyp/screens/about_terms_policy/about_us_screen.dart';
import 'package:med_delivery_fyp/screens/about_terms_policy/policy_screen.dart';
import 'package:med_delivery_fyp/screens/about_terms_policy/terms_screen.dart';
import 'package:med_delivery_fyp/screens/login/login_page.dart';
import 'package:med_delivery_fyp/screens/orders/orders_screen.dart';
import '../../config/constants.dart';
import '../../helper/data.dart';
import '../../config/size_config.dart';

class UserProfile extends StatefulWidget {
  static String routeName = "/userProfile";
  //User userData;
  // UserProfile({
  //   // required this.userData
  //   });

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  //

  Widget listTile(
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Divider(
            height: 1,
          ),
          ListTile(
            leading: Icon(icon),
            title: Text(title),
            trailing: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    var userData = AppData.user_1;
    //SizeConfig.init(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 80,
                    //color: kPrimaryColor,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                  ),
                  Container(
                    height: getProportionateScreenHeight(500),
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: getProportionateScreenWidth(250),
                              height: 80,
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        userData.username,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: kTextColor),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(userData.userEmail),
                                    ],
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: kPrimaryColor,
                                    child: CircleAvatar(
                                      radius: 12,
                                      child: Icon(
                                        Icons.edit,
                                        color: kPrimaryColor,
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        listTile(
                            icon: Icons.shop_outlined,
                            title: "My Orders",
                            onTap: () {
                              Navigator.pushNamed(
                                  context, OrdersScreen.routeName);
                            }),
                        listTile(
                            icon: Icons.location_on_outlined,
                            title: "My Delivery Address",
                            onTap: () {}),
                        listTile(
                            icon: Icons.file_copy_outlined,
                            title: "Terms & Conditions",
                            onTap: () {
                              Navigator.pushNamed(
                                  context, TermsConditionScreen.routeName);
                            }),
                        listTile(
                            icon: Icons.policy_outlined,
                            title: "Privacy Policy",
                            onTap: () {
                              Navigator.pushNamed(
                                  context, PolicyScreen.routeName);
                            }),
                        listTile(
                            icon: Icons.add_chart,
                            title: "About",
                            onTap: () {
                              Navigator.pushNamed(
                                  context, AboutUsScreen.routeName);
                            }),
                        listTile(
                            icon: Icons.exit_to_app_outlined,
                            title: "Log Out",
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, LoginPage.routeName);
                            }),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: kPrimaryColor,
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        userData.userImage,
                      ),
                      radius: 45,
                      backgroundColor: Colors.white),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: getProportionateScreenHeight(50),
                width: getProportionateScreenWidth(50),
                child: Image.asset('assets/images/delivery.png'),
              ),
            ],
          )
        ],
      ),
    );

    // );
  }
}

// Scaffold(
//       backgroundColor: kPrimaryColor,
//       appBar: AppBar(
//         elevation: 0.0,
//         title: Text(
//           "My Profile",
//           style: TextStyle(
//             fontSize: 18,
//             color: kTextColor,
//           ),
//         ),
//       ),
//       // drawer: DrawerSide(
//       //   userProvider: widget.userProvider,
//       // ),
//       body:
