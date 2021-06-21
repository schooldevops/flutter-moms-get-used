import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moms_get_used/components/BasicItemListView.dart';
import 'package:moms_get_used/components/Dropdown.dart';
import 'package:moms_get_used/components/MainFooter.dart';
import 'package:moms_get_used/cosnts/ColorsConstants.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  String defaultValue = "을지로2가";
  List<String> items = ['을지로2가', '미사'];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainBackgroundColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Dropdown(
          defaultValue: defaultValue,
          items: items,
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search), onPressed: () => {print('search ')}),
          IconButton(
              icon: Icon(Icons.category),
              onPressed: () => {Navigator.pushNamed(context, 'category')}),
          IconButton(
              icon: Icon(
                FontAwesomeIcons.bell,
              ),
              onPressed: () => {print('click bell')}),
        ],
      ),
      body: Column(
        children: [
          // MainHeader(
          //   defaultValue: defaultValue,
          //   items: items,
          // ),
          Expanded(
            child: BasicItemListView(),
          ),
          MainFooter(),
        ],
      ),
    );
  }
}
