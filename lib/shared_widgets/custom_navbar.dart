import 'package:flutter/material.dart';
import '../config/constants.dart';
import '../screens/home/home.dart';
import '../config/routes.dart';
import '../screens/home/home.dart';

class CBottomBar extends StatefulWidget {
  const CBottomBar({Key? key}) : super(key: key);

  @override
  _CBottomBarState createState() => _CBottomBarState();
}

class _CBottomBarState extends State<CBottomBar> {
  List<Widget> tabs = [
    Center(child: Text("Search", style: TextStyle(color: Colors.white))),
    Center(child: Text("Profile", style: TextStyle(color: Colors.white))),
    Center(child: Text("Notification", style: TextStyle(color: Colors.white))),
    Center(child: Text("Add item", style: TextStyle(color: Colors.white))),
  ];

  int currentPage = 0;

  setPage(index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Container(
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    //color: currentPage == 0 ? Colors.white : Colors.grey,
                    color: kPrimaryColor,

                    size: 30,
                  ),
                  onPressed: () {
                    print(currentPage);
                    Navigator.pushReplacementNamed(context, Home.routeName);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    //color: currentPage == 0 ? Colors.white : Colors.grey,
                    color: kPrimaryColor,

                    size: 30,
                  ),
                  onPressed: () {
                    print(currentPage);
                    setPage(2);
                  },
                ),
                SizedBox.shrink(),
                IconButton(
                  icon: Icon(
                    Icons.person,
                    //color: currentPage == 0 ? Colors.white : Colors.grey,
                    color: kPrimaryColor,

                    size: 30,
                  ),
                  onPressed: () {
                    print(currentPage);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.notifications_outlined,
                    //color: currentPage == 0 ? Colors.white : Colors.grey,
                    color: kPrimaryColor,

                    size: 30,
                  ),
                  onPressed: () {
                    print(currentPage);
                  },
                )
              ],
            )));
  }
}

// Widget BottomNavbar(BuildContext context){
//   return BottomNavigationBar(items: [
//     BottomNavigationBarItem(icon: icon),
//   ])
// }