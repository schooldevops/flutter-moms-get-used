import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dropdown extends StatefulWidget {
  String defaultValue;
  List<String> items;

  Dropdown({required this.defaultValue, required this.items});

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: this.widget.defaultValue,
      icon: const Icon(Icons.keyboard_arrow_down_sharp),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 0,
        color: Colors.black26,
      ),
      onChanged: (String? newValue) {
        setState(() {
          this.widget.defaultValue = newValue!;
        });
      },
      items: this.widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            print('clicked menu');
          },
        );
      }).toList(),
    );
  }
}
