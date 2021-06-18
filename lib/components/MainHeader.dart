import 'package:flutter/material.dart';
import 'package:moms_get_used/components/Dropdown.dart';

// ignore: must_be_immutable
class MainHeader extends StatelessWidget {
  String defaultValue = "을지로2가";
  List<String> items = ['을지로2가', '미사'];

  MainHeader({required this.defaultValue, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top:10, bottom: 5, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Dropdown(
                defaultValue: defaultValue,
                items: items,
              )
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.black12,
          )
        ],
      ),
    );
  }
}
