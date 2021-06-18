import 'package:flutter/material.dart';
import 'package:moms_get_used/models/Item.dart';

// ignore: must_be_immutable
class ProductDetailInfo extends StatelessWidget {
  Item? item;

  ProductDetailInfo({this.item});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item!.title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                item!.category,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              Text(
                item!.getElapseTime(),
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            item!.contents,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
