import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moms_get_used/cosnts/ColorsConstants.dart';

// ignore: must_be_immutable
class MainFooter extends StatelessWidget {
  // String currentMenu = 'home';

  // addProduct, category

//   @override
//   _MainFooterState createState() => _MainFooterState();
// }

// class _MainFooterState extends State<MainFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: kMainBackgroundColor,
        border: Border.all(
          width: 1,
          color: Colors.black26,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, 'home');
            },
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.home,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "홈",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'recommend');
            },
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.medal,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "추천",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'addProduct');
            },
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.plusCircle,
                    size: 50.0,
                    // color: Colors.white,
                    color: kMainButtonColor,
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  // Text("Sell")
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'chats');
            },
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.comments,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Chat",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'mypage');
            },
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.user,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "My",
                    style: TextStyle(color: Colors.white),
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
