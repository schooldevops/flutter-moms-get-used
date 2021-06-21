import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moms_get_used/cosnts/ColorsConstants.dart';
import 'package:moms_get_used/models/UserInfo.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CategoryScreen extends StatelessWidget {
  List<String> categories = ['식기', '장난감', '유모차', '유아도서', '유아의류', '분유'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainBackgroundColor,
        title: Text('카테고리 설정하기'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => {
            Navigator.pop(context),
          },
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
        child: Consumer<UserInfo>(
          builder: (context, userInfo, child) {
            return Container(
              child: GridView.count(
                crossAxisCount: 3,
                padding: EdgeInsets.all(5),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  categoryItems(context, 'All', 'All' == userInfo.category),
                  ...categories.map((item) => categoryItems(
                      context, '$item', '$item' == userInfo.category))
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget categoryItems(BuildContext context, String title, bool clicked) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: clicked ? kMainBackgroundColor : Colors.black12,
        ),
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.home,
                  size: 25.0,
                  color: Colors.black54,
                ),
                SizedBox(
                  height: 8,
                ),
                Center(child: Text('$title')),
              ],
            ),
          ),
        ),
      ),
      onTap: () =>
          {Provider.of<UserInfo>(context, listen: false).changeCategory(title)},
    );
  }
}
