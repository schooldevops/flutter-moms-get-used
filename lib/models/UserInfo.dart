import 'package:flutter/material.dart';

class UserInfo extends ChangeNotifier {
  static const String DEFAULT_AVATAR =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnPGqX4s6HDBoVTLwIhy3fFmdxvMiDIfUtdA&usqp=CAU';

  int userId;
  String avatar;
  String userName;
  String location1;
  String? location2;
  double score;

  UserInfo(
      {required this.userId,
      this.avatar = DEFAULT_AVATAR,
      required this.userName,
      required this.location1,
      this.location2,
      this.score = 50.0});
}
