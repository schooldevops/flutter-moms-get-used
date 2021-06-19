import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainFooter extends StatefulWidget {
  @override
  _MainFooterState createState() => _MainFooterState();
}

class _MainFooterState extends State<MainFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black12,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                GestureDetector(
                    child: Icon(
                      FontAwesomeIcons.home,
                      size: 25.0,
                      color: Colors.black,
                    ),
                    onTap: () {
                      print("Pressed");
                    }),
                SizedBox(
                  height: 5,
                ),
                Text("홈")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                GestureDetector(
                    child: Icon(
                      FontAwesomeIcons.medal,
                      size: 25.0,
                      color: Colors.black26,
                    ),
                    onTap: () {}),
                SizedBox(
                  height: 5,
                ),
                Text("추천")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                GestureDetector(
                    child: Icon(
                      FontAwesomeIcons.plusCircle,
                      size: 50.0,
                      color: Colors.redAccent,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'addProduct');
                    }),
                // SizedBox(
                //   height: 5,
                // ),
                // Text("Sell")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                GestureDetector(
                    child: Icon(
                      FontAwesomeIcons.comments,
                      size: 25.0,
                      color: Colors.black26,
                    ),
                    onTap: () {
                      print("Pressed");
                    }),
                SizedBox(
                  height: 5,
                ),
                Text("챗")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                GestureDetector(
                    child: Icon(
                      FontAwesomeIcons.user,
                      size: 28.0,
                      color: Colors.black26,
                    ),
                    onTap: () {
                      print("Pressed");
                    }),
                SizedBox(
                  height: 5,
                ),
                Text("My")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
