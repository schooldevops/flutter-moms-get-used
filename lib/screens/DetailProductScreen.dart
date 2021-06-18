import 'package:flutter/material.dart';
import 'package:moms_get_used/components/Carousel.dart';
import 'package:moms_get_used/components/ProductDetailFooter.dart';
import 'package:moms_get_used/components/ProductDetailHeader.dart';
import 'package:moms_get_used/components/ProductDetailInfo.dart';
import 'package:moms_get_used/components/SellerInfoArea.dart';
import 'package:moms_get_used/models/Item.dart';

// ignore: must_be_immutable
class DetailProductScreen extends StatelessWidget {
  Item item;

  DetailProductScreen({Key? key, required this.item});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Carousel(items: item.items),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.chevron_left,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.shopping_basket,
                              ),
                              onPressed: () =>
                                  Navigator.pushNamed(context, 'orderscreen')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    child: Column(
                      children: [
                        SellerInfoArea(),
                        Divider(
                          thickness: 1,
                        ),
                        ProductDetailInfo(item: item),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              ProductDetailFooter(),
            ],
            // children: [
            //   ProductDetailHeader(),
            //   Expanded(
            //     child: SingleChildScrollView(
            //       scrollDirection: Axis.vertical,
            //       child: Container(
            //         child: Column(
            //           children: [
            //             Container(
            //               padding: EdgeInsets.symmetric(horizontal: 10),
            //               width: width,
            //               height: width,
            //               child: Carousel(items: item.items),
            //             ),
            //             SellerInfoArea(userInfo: userInfo),
            //             Divider(
            //               thickness: 1,
            //             ),
            //             ProductDetailInfo(item: item),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            //   Divider(
            //     thickness: 1,
            //   ),
            //   ProductDetailFooter(),
            // ],
          ),
        ),
      ),
    );
  }
}
