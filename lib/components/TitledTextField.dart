import 'package:flutter/material.dart';
import 'package:moms_get_used/cosnts/FormFieldType.dart';

// ignore: must_be_immutable
class TitledTextField extends StatefulWidget {
  String title;
  String value;
  String placeHolder;
  FormFieldType formFieldType;

  TitledTextField(
      {this.title = '',
      this.value = '',
      this.placeHolder = 'Enter',
      this.formFieldType = FormFieldType.TEXT});

  @override
  _TitledTextFieldState createState() => _TitledTextFieldState();
}

class _TitledTextFieldState extends State<TitledTextField> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: 50,
        width: width,
        child: TextField(
          decoration: InputDecoration(
              hintText: this.widget.placeHolder, border: InputBorder.none),
          onChanged: (value) {
            if (this.widget.formFieldType == FormFieldType.NUMBER) {
              if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                print(value);
                value = '';
              }
            }
          },
          // validator: (value) {
          //   if (this.widget.formFieldType == FormFieldType.NUMBER) {
          //     if (!RegExp(r'^[0-9]+$').hasMatch(value!)) {
          //       return '숫자를 입력해주세요';
          //     }
          //   }
          //   if (value == null || value.isEmpty) {
          //     return '${this.widget.title}을 입력하세요. ';
          //   }
          //   return null;
          // },
        )
        // child: Row(
        //   children: [
        //     Text(this.widget.title),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     TextField(
        //       decoration: InputDecoration(hintText: this.widget.placeHolder),
        //       onChanged: (value) {
        //         setState(() {
        //           value = value;
        //         });
        //       },
        //     )
        //   ],
        // ),
        );
  }
}
