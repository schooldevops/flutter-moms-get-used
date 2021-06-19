import 'package:flutter/material.dart';
import 'package:moms_get_used/models/UserInfo.dart';
import 'package:moms_get_used/screens/AddProductScreen.dart';
import 'package:moms_get_used/screens/HomeScreen.dart';
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
            create: (context) =>
                UserInfo(userId: 111, userName: 'KIDO', location1: '하남시 미사')),
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
            },
          );
        },
      ),
    );
  }
}
