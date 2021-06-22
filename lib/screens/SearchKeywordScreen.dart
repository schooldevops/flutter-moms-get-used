import 'package:flutter/material.dart';
import 'package:moms_get_used/cosnts/ColorsConstants.dart';

// ignore: must_be_immutable
class SearchKeywordScreen extends StatefulWidget {
  List<String> keywords = ['장난감', '유모차'];

  @override
  _SearchKeywordScreen createState() => _SearchKeywordScreen();
}

class _SearchKeywordScreen extends State<SearchKeywordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('검색 키워드 등록하기'),
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
        child: createComponent(context),
      ),
    );
  }

  Widget createComponent(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      '등록된 키워드',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    children: [
                      ...this.widget.keywords.map(
                            (title) => Chip(
                              label: Text('$title'),
                              padding: EdgeInsets.all(10),
                            ),
                          )
                      // Chip(
                      //   label: Text('장난감'),
                      //   backgroundColor: kMainBackgroundColor,
                      //   padding: EdgeInsets.all(10),
                      // ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      // Chip(
                      //   label: Text('유모차'),
                      //   padding: EdgeInsets.all(10),
                      // ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      // Chip(
                      //   label: Text('모빌'),
                      //   padding: EdgeInsets.all(10),
                      // ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      // Chip(
                      //   label: Text('젖병'),
                      //   padding: EdgeInsets.all(10),
                      // ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      // Chip(
                      //   label: Text('젖병 소독기'),
                      //   padding: EdgeInsets.all(10),
                      // ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      // Chip(
                      //   label: Text('치발기'),
                      //   padding: EdgeInsets.all(10),
                      // ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      // Chip(
                      //   label: Text('아기싸게'),
                      //   padding: EdgeInsets.all(10),
                      // ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      // Chip(
                      //   label: Text('사운드북'),
                      //   padding: EdgeInsets.all(10),
                      // ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      // Chip(
                      //   label: Text('입체책'),
                      //   padding: EdgeInsets.all(10),
                      // ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      // Chip(
                      //   label: Text('쪽쪽이'),
                      //   padding: EdgeInsets.all(10),
                      // ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      // Chip(
                      //   label: Text('딸랑이'),
                      //   padding: EdgeInsets.all(10),
                      // ),
                    ],
                  )
                ],
              ),
            ),
            TextFormField(
              onFieldSubmitted: (value) => {
                setState(() {
                  this.widget.keywords.add(value);
                })
              },
              decoration: const InputDecoration(
                hintText: '#연관태그',
                labelText: '연관태그',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return '연관태그를 입력하세요.';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: '#가격범위',
                labelText: '가격범위',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return '가격범위를 입력하세요.';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
