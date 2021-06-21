import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moms_get_used/cosnts/ColorsConstants.dart';

class ProductDetailFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kMainBackgroundColor),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            child: Icon(
              FontAwesomeIcons.home,
              size: 25.0,
              color: Colors.white,
            ),
            onTap: () {
              print("Pressed");
            },
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '18,000 원',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                    Text(
                      '가격제안불가',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shadowColor: kMainBackgroundColor,
                    ),
                    onPressed: () {
                      print("채팅으로 구매하기");
                    },
                    child: const Text(
                      '채팅으로 구매하기',
                      style: TextStyle(color: kMainBackgroundColor),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
