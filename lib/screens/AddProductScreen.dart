import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moms_get_used/components/Dropdown.dart';
import 'package:moms_get_used/components/ImageBox.dart';
import 'package:moms_get_used/components/TitledTextField.dart';
import 'package:moms_get_used/cosnts/Categories.dart';
import 'package:moms_get_used/cosnts/FormFieldType.dart';

// ignore: must_be_immutable
class AddProductScreen extends StatefulWidget {
  List<String> images = [
    'http://gdimg.gmarket.co.kr/926294632/still/600?ver=0',
    'http://img2.tmon.kr/cdn3/deals/2020/10/12/4517849590/4517849590_front_1c746e8c3f.jpg',
    'http://img2.tmon.kr/cdn3/deals/2020/10/12/4517849590/4517849590_front_1c746e8c3f.jpg',
    'http://img2.tmon.kr/cdn3/deals/2020/10/12/4517849590/4517849590_front_1c746e8c3f.jpg',
    'http://img2.tmon.kr/cdn3/deals/2020/10/12/4517849590/4517849590_front_1c746e8c3f.jpg',
    'http://img2.tmon.kr/cdn3/deals/2020/10/12/4517849590/4517849590_front_1c746e8c3f.jpg',
  ];

  @override
  _AddProductScreen createState() {
    return _AddProductScreen();
  }
}

// Create a corresponding State class, which holds data related to the form.
class _AddProductScreen extends State<AddProductScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _priceController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                              ),
                              Container(
                                // padding: EdgeInsets.only(left: 20),
                                height: 120,
                                width: width,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black26)),
                                        height: 110,
                                        width: 110,
                                        child: GestureDetector(
                                          child: Icon(
                                            FontAwesomeIcons.camera,
                                            size: 25.0,
                                            color: Colors.black26,
                                          ),
                                          onTap: () {
                                            print("Pressed");
                                          },
                                        ),
                                      ),
                                      ...this.widget.images.map((imageUrl) {
                                        return ImageBox(
                                          imageUrl: imageUrl,
                                          mLeft: 15,
                                        );
                                      }),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: 'Enter your full name',
                                        labelText: '상품명',
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return '상품명을 입력하세요.';
                                        }
                                        return null;
                                      },
                                    ),
                                    TextFormField(
                                      controller: _priceController,
                                      decoration: const InputDecoration(
                                        hintText: '₩ 가격',
                                        labelText: '가격',
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return '가격을 입력하세요.';
                                        } else if (!RegExp(r'^[0-9]*$')
                                            .hasMatch(value)) {
                                          this.setState(() {
                                            _priceController.clear();
                                          });
                                          return '상품 가격은 숫자만 입력 가능합니다.';
                                        }
                                        return null;
                                      },
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: '상품 설명',
                                        labelText: '상품 설명',
                                      ),
                                      maxLines: 10,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return '상품 설명을 입력하세요. ';
                                        }
                                        return null;
                                      },
                                    ),
                                    new Container(
                                        padding: const EdgeInsets.only(
                                            left: 150.0, top: 40.0),
                                        child: new ElevatedButton(
                                          child: const Text('Submit'),
                                          onPressed: () {
                                            // It returns true if the form is valid, otherwise returns false
                                            if (_formKey.currentState!
                                                .validate()) {}
                                          },
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(50, 200, 200, 200)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.chevron_left,
                              ),
                              onPressed: () => Navigator.pop(context),
                            ),
                            Text(
                              '상품 등록하기',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(''),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
