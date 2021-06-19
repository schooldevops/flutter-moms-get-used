import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moms_get_used/models/Item.dart';
import 'package:moms_get_used/screens/DetailProductScreen.dart';
// import 'package:moms_get_used/screens/detail_screen.dart';

// ignore: must_be_immutable
class BasicItemList extends StatelessWidget {
  Item product;

  BasicItemList(this.product);

  String imgUrl =
      'http://img2.tmon.kr/cdn3/deals/2020/10/12/4517849590/4517849590_front_1c746e8c3f.jpg';

  @override
  Widget build(BuildContext context) {
    // List<Image> images = product.getImages()!;

    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.black12, width: 0.5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              print("Tapped");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailProductScreen(item: product),
                  // builder: (context) => DetailsScreen(),
                ),
              );
            },
            child: Container(
              width: 110.0,
              height: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: (product.items != null && product.items!.isNotEmpty)
                  ? Image(
                      image: NetworkImage(product.items![0]),
                      height: 100.0,
                      width: 100.0,
                    )
                  : Image(
                      image: NetworkImage(imgUrl),
                      height: 100.0,
                      width: 100.0,
                    ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                print("Tapped");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailProductScreen(item: product),
                    // builder: (context) => DetailsScreen(),
                  ),
                );
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${product.title}',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w400),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${product.location} - ${product.getElapseTime()}',
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w100),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              '${product.getFormattedPrice()}',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                  child: Icon(
                                    product.pick
                                        ? FontAwesomeIcons.solidHeart
                                        : FontAwesomeIcons.heart,
                                    size: 20.0,
                                    color: product.pick
                                        ? Colors.redAccent
                                        : Colors.black26,
                                  ),
                                  onTap: () {
                                    print("Pressed");
                                  }),
                              SizedBox(
                                width: 8,
                              ),
                              product.goodCount > 0
                                  ? Text(
                                      '${product.goodCount}',
                                      style: TextStyle(fontSize: 16),
                                    )
                                  : Text('')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
