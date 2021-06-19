import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageBox extends StatelessWidget {
  double width;
  double height;
  String imageUrl;
  double mTop;
  double mRight;
  double mBottom;
  double mLeft;

  ImageBox(
      {this.width = 110,
      this.height = 110,
      this.mTop = 0,
      this.mRight = 0,
      this.mBottom = 0,
      this.mLeft = 0,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mLeft + this.width + mRight,
      height: mTop + this.height + mBottom,
      padding: EdgeInsets.only(
          top: mTop, right: mRight, bottom: mBottom, left: mLeft),
      child: Container(
        width: this.width,
        height: this.height,
        decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
        child: Image.network(this.imageUrl),
      ),
    );
  }
}
