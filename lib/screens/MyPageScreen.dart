import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moms_get_used/cosnts/ColorsConstants.dart';
import 'package:moms_get_used/models/UserInfo.dart';
import 'package:provider/provider.dart';

class MyPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY Page'),
        backgroundColor: kMainBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => {
            Navigator.pop(context),
          },
        ),
      ),
      body: SafeArea(
        child: createMenuList(context),
      ),
    );
  }

  Widget createMenuList(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MyInfoWidget(context),
          MyMenuWidget(context),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MyInfoWidget(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Consumer<UserInfo>(
      builder: (context, userInfo, child) {
        return Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          width: width,
          height: 170,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black12)),
          ),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          image: NetworkImage(userInfo.avatar),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${userInfo.userName}',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${userInfo.location1}',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('print');
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.receipt,
                              size: 35.0,
                              color: kMainBackgroundColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('판매내역'),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('print');
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.shoppingBag,
                              size: 35.0,
                              color: kMainBackgroundColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('구매내역'),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('print');
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.solidHeart,
                              size: 35.0,
                              color: kMainBackgroundColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('판매내역'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  Widget MyMenuWidget(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'babyinfo');
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.baby,
                      size: 20.0,
                      color: kMainBackgroundColor,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '아이정보 설정하기',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'keyword');
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.keyboard,
                      size: 20.0,
                      color: kMainBackgroundColor,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '키워드 설정하기',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print('print');
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.locationArrow,
                      size: 20.0,
                      color: kMainBackgroundColor,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '지역 설정하기',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'category');
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.category,
                      size: 20.0,
                      color: kMainBackgroundColor,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '카테고리 설정하기',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
