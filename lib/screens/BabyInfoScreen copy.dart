import 'package:flutter/material.dart';
import 'package:moms_get_used/cosnts/ColorsConstants.dart';

class BabyInfoScreen extends StatefulWidget {
  const BabyInfoScreen({Key? key}) : super(key: key);

  @override
  _BabyInfoScreenState createState() => _BabyInfoScreenState();
}

class _BabyInfoScreenState extends State<BabyInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('아이정보 등록하기'),
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
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter baby\'s full name',
                labelText: '아이이름',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return '아이 이름을 입력하세요.';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter baby\'s birthday',
                labelText: '생년월일',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return '아이 생일을 입력하세요.';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () => {print('print')},
                  child: Text('남아'),
                ),
                SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () => {print('print')},
                  child: Text('여아'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      '우리 아이와 엄마에게 필요한 것은?',
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
                      Chip(
                        label: Text('장난감'),
                        backgroundColor: kMainBackgroundColor,
                        padding: EdgeInsets.all(10),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        label: Text('유모차'),
                        padding: EdgeInsets.all(10),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        label: Text('모빌'),
                        padding: EdgeInsets.all(10),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        label: Text('젖병'),
                        padding: EdgeInsets.all(10),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        label: Text('젖병 소독기'),
                        padding: EdgeInsets.all(10),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        label: Text('치발기'),
                        padding: EdgeInsets.all(10),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        label: Text('아기싸게'),
                        padding: EdgeInsets.all(10),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        label: Text('사운드북'),
                        padding: EdgeInsets.all(10),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        label: Text('입체책'),
                        padding: EdgeInsets.all(10),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        label: Text('쪽쪽이'),
                        padding: EdgeInsets.all(10),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        label: Text('딸랑이'),
                        padding: EdgeInsets.all(10),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
