import 'package:flutter/material.dart';
import 'package:moms_get_used/cosnts/ColorsConstants.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('지역 설정하기'),
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
        child: Container(
          child: Center(child: Text('지역설정')),
        ),
      ),
    );
  }
}
