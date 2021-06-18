import 'package:flutter/material.dart';
import 'package:moms_get_used/models/UserInfo.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SellerInfoArea extends StatelessWidget {
  SellerInfoArea();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Consumer<UserInfo>(builder: (context, userInfo, child) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: width,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(userInfo.avatar),
                        fit: BoxFit.contain),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userInfo.userName),
                    Text(userInfo.location1),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${userInfo.score.toString()}%'),
                Text('매너온도'),
              ],
            )
          ],
        ),
      );
    });
  }
}
