import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moms_get_used/components/Carousel.dart';
import 'package:moms_get_used/components/ProductDetailFooter.dart';
import 'package:moms_get_used/components/ProductDetailInfo.dart';
import 'package:moms_get_used/components/SellerInfoArea.dart';
import 'package:moms_get_used/cosnts/ColorsConstants.dart';
import 'package:moms_get_used/models/Item.dart';

// ignore: must_be_immutable
class DetailProductScreen extends StatelessWidget {
  Item item;

  DetailProductScreen({Key? key, required this.item});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('${item.title}'),
        backgroundColor: kMainBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => {
            Navigator.pop(context),
          },
        ),
        actions: [
          IconButton(
              icon: Icon(
                FontAwesomeIcons.heart,
                // size: 25.0,
              ),
              onPressed: () => {print('click')}),
          // ElevatedButton(
          //   onPressed: () => {print('clic')},
          //   child: Text('등록하기'),
          //   style: ElevatedButton.styleFrom(
          //     primary: kMainButtonColor,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: new BorderRadius.circular(8.0),
          //     ),
          //   ),
          // ),
        ],
      ),
      body: SafeArea(
        child: _showDetail(item, width),
      ),
    );
  }
}

Widget _showDetail(Item item, double width) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          width: width,
                          height: width,
                          alignment: Alignment.center,
                          child: Carousel(items: item.items),
                        ),
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
            ],
          ),
        ),
        Divider(
          height: 1,
          thickness: 1,
        ),
        ProductDetailFooter(),
      ],
    ),
  );
}
