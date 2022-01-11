import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/screens/messages/messages_detail_page.dart';

class MessagesPage extends StatefulWidget {
  static String routeName = "/messagePage";

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage>
    with AutomaticKeepAliveClientMixin<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: kPrimaryColor,
          ),
        ),
        backgroundColor: kPrimaryWhiteColor,
        title: Text(
          'Messages',
          style: TextStyle(
              color: kPrimaryDarkColor,
              fontFamily: 'Muli',
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                        color: kPrimaryColor.withOpacity(0.8), width: 0.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        BorderSide(color: kPrimaryGrayColor, width: 0.5),
                  ),
                  filled: true,
                  fillColor: Colors.grey[250],
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[400],
                    size: 20,
                  ),
                  hintText: 'Search messages',
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
                cursorWidth: 1,
                maxLines: 1,
              ),
            ),
            MessageListItem(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  MessagesDetailPage.routeName,
                );
              },
              imagePath: 'assets/images/icon_doctor_1.png',
              name: 'Tawfiq Bahri',
              message: 'Your next appointment',
              date: '11:05 AM',
              unread: 10,
              online: false,
            ),
            MessageListItem(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  MessagesDetailPage.routeName,
                );
              },
              imagePath: 'assets/images/icon_doctor_3.png',
              name: 'Joseph Bouroumat',
              message: 'Don\'t forget your blood test',
              date: '08:31 AM',
              unread: 2,
              online: true,
            ),
            MessageListItem(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  MessagesDetailPage.routeName,
                );
              },
              imagePath: 'assets/images/icon_doctor_2.png',
              name: 'Liza Anderson',
              message: 'You: Good news 😃',
              date: '03:48 PM',
              unread: 0,
              online: false,
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class MessageListItem extends StatelessWidget {
  final VoidCallback onTap;
  final String imagePath;
  final String name;
  final String message;
  final String date;
  final int unread;
  final bool online;

  const MessageListItem(
      {Key? key,
      required this.onTap,
      required this.imagePath,
      required this.name,
      required this.message,
      required this.date,
      required this.unread,
      required this.online})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.transparent,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Visibility(
                    visible: online,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(1),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  date,
                  style: TextStyle(
                    color: kPrimaryColor.withOpacity(0.8),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Visibility(
                  visible: (unread != 0 && unread != null) ? true : false,
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 7,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: kPrimaryColor.withOpacity(0.8),
                    ),
                    child: Text(
                      unread.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
