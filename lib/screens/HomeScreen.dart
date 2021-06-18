import 'package:flutter/material.dart';
import 'package:moms_get_used/components/MainFooter.dart';
import 'package:moms_get_used/components/MainHeader.dart';

import 'ItemListScreen.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  String defaultValue = "을지로2가";
  List<String> items = ['을지로2가', '미사'];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainHeader(
              defaultValue: defaultValue,
              items: items,
            ),
            Expanded(
              child: ItemListScreen(),
            ),
            MainFooter(),
          ],
        ),
      ),
    );
  }
}
