import 'package:flutter/material.dart';

class UserInfo extends ChangeNotifier {
  static const String DEFAULT_AVATAR =
      'https://www.incimages.com/uploaded_files/image/1920x1080/getty_624206636_200013332000928034_376810.jpg';

  int userId;
  String avatar;
  String userName;
  String location1;
  String? location2;
  double score;
  String category;

  UserInfo(
      {required this.userId,
      this.avatar = DEFAULT_AVATAR,
      required this.userName,
      required this.location1,
      this.location2,
      this.score = 50.0,
      this.category = '식기'});

  void changeCategory(String category) {
    this.category = category;
    notifyListeners();
  }
}
