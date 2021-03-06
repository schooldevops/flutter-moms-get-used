import 'package:flutter/material.dart';
import 'package:moms_get_used/models/UserInfo.dart';
import 'package:moms_get_used/screens/AddProductScreen.dart';
import 'package:moms_get_used/screens/BabyInfoScreen%20copy.dart';
import 'package:moms_get_used/screens/SearchKeywordScreen.dart';
import 'package:moms_get_used/screens/CategoryScreen.dart';
import 'package:moms_get_used/screens/ChatListScreen.dart';
import 'package:moms_get_used/screens/HomeScreen.dart';
import 'package:moms_get_used/screens/MyPageScreen.dart';
import 'package:moms_get_used/screens/RecommendScreen.dart';
import 'package:moms_get_used/services/ProductService.dart';
import 'package:moms_get_used/services/UserService.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var initRouteValue = "home";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserInfo>(
            create: (context) => UserInfo(
                userId: 111,
                userName: 'KIDO',
                location1: '하남시 미사',
                category: 'ALL')),
        Provider(create: (c) => UserService()),
        Provider(create: (c) => ProductService()),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            initialRoute: initRouteValue,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: HomeScreen(),
            routes: {
              'home': (context) => HomeScreen(),
              'addProduct': (context) => AddProductScreen(),
              'category': (context) => CategoryScreen(),
              'recommend': (context) => RecommendScreen(),
              'chats': (context) => ChatListScreen(),
              'mypage': (context) => MyPageScreen(),
              'babyinfo': (context) => BabyInfoScreen(),
              'keyword': (context) => SearchKeywordScreen(),
            },
          );
        },
      ),
    );
  }
}
