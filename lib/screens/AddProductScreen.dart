import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moms_get_used/components/Dropdown.dart';
import 'package:moms_get_used/components/ImageBox.dart';
import 'package:moms_get_used/cosnts/Categories.dart';
import 'package:moms_get_used/cosnts/ColorsConstants.dart';
import 'package:moms_get_used/cosnts/Constants.dart';

// ignore: must_be_immutable
class AddProductScreen extends StatefulWidget {
  List<String> images = [
    'https://gdimg.gmarket.co.kr/926294632/still/600?ver=0',
    'https://img2.tmon.kr/cdn3/deals/2020/10/12/4517849590/4517849590_front_1c746e8c3f.jpg',
    'https://img2.tmon.kr/cdn3/deals/2020/10/12/4517849590/4517849590_front_1c746e8c3f.jpg',
    'https://img2.tmon.kr/cdn3/deals/2020/10/12/4517849590/4517849590_front_1c746e8c3f.jpg',
    'https://img2.tmon.kr/cdn3/deals/2020/10/12/4517849590/4517849590_front_1c746e8c3f.jpg',
    'https://img2.tmon.kr/cdn3/deals/2020/10/12/4517849590/4517849590_front_1c746e8c3f.jpg',
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

  final ImagePicker _picker = ImagePicker();

  kGenderEnum _gender = kGenderEnum.MALE;

  Future pickImage() async {
    try {
      var picture = await _picker.getImage(
          source: ImageSource.gallery, maxWidth: 500, maxHeight: 500);
      print(picture);
      return picture;
    } on Exception catch (exception) {
      print(exception);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('상품 등록하기'),
        backgroundColor: kMainBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => {
            Navigator.pop(context),
          },
        ),
        // actions: [
        //   IconButton(
        //       icon: Icon(Icons.search), onPressed: () => {print('click')}),
        //   ElevatedButton(
        //     onPressed: () => {print('clic')},
        //     child: Text('등록하기'),
        //     style: ElevatedButton.styleFrom(
        //       primary: kMainButtonColor,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: new BorderRadius.circular(8.0),
        //       ),
        //     ),
        //   ),
        // ],
      ),
      body: SafeArea(
        child: createLayout(),
      ),
    );
  }

  Widget createLayout() {
    return Container(
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
                            height: 10,
                          ),
                          Container(
                            // padding: EdgeInsets.only(left: 20),
                            height: 120,
                            width: 500,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black26)),
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
                                        pickImage();
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
                                SizedBox(
                                  height: 20,
                                ),
                                Dropdown(
                                  defaultValue: kCategories.values.first,
                                  items: kCategories.values.toList(),
                                  isBold: false,
                                  isDefaultFont: true,
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: '대상나이',
                                          labelText: '대상나이',
                                        ),
                                        maxLines: 1,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return '대상 나이를 입력하세요. ';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Dropdown(
                                        defaultValue:
                                            kYearEnum.MONTH.toString(),
                                        items: kYearEnum.values
                                            .map((item) => item.toString())
                                            .toList(),
                                        isBold: false,
                                        isDefaultFont: true,
                                        isExpanded: false,
                                      ),
                                    ),
                                  ],
                                ),
                                ListTile(
                                  title: Text('남자'),
                                  leading: Radio(
                                    value: kGenderEnum.MALE,
                                    groupValue: _gender,
                                    onChanged: (value) {
                                      setState(() {
                                        _gender = kGenderEnum.MALE;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: Text('여자'),
                                  leading: Radio(
                                    value: kGenderEnum.FEMALE,
                                    groupValue: _gender,
                                    onChanged: (value) {
                                      setState(() {
                                        _gender = kGenderEnum.FEMALE;
                                      });
                                    },
                                  ),
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(
                                      left: 150.0, top: 40.0),
                                  child: new ElevatedButton(
                                    child: const Text('Submit'),
                                    style: ElevatedButton.styleFrom(
                                      primary: kMainButtonColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      // It returns true if the form is valid, otherwise returns false
                                      if (_formKey.currentState!.validate()) {}
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
