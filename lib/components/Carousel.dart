import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

// ignore: must_be_immutable
class Carousel extends StatelessWidget {
  List<String>? items;

  Carousel({this.items});

  @override
  Widget build(BuildContext context) {
    if (this.items == null) {
      return Container();
    }

    // List<Image> images = this
    //     .items!
    //     .map((imgUrl) => Image.network(
    //           imgUrl,
    //           fit: BoxFit.fill,
    //         ))
    //     .toList();

    return Container(
      child: Swiper(
        index: 0,
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            this.items![index],
            fit: BoxFit.fill,
          );
        },
        autoplay: false,
        itemCount: items!.length,
        scrollDirection: Axis.horizontal,
        pagination: SwiperPagination(alignment: Alignment.bottomCenter),
        // control: SwiperControl(color: Colors.black54),
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }
}
