import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetailHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Icon(
              FontAwesomeIcons.arrowLeft,
              size: 23.0,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Row(
            children: [
              GestureDetector(
                child: Icon(
                  FontAwesomeIcons.shareAlt,
                  size: 23.0,
                  color: Colors.black,
                ),
                onTap: () {
                  print("Pressed");
                },
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                child: Icon(
                  FontAwesomeIcons.bars,
                  size: 23.0,
                  color: Colors.black,
                ),
                onTap: () {
                  print("Pressed");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
