import 'package:flutter/material.dart';
import 'package:moms_get_used/services/ProductService.dart';
import 'package:moms_get_used/services/UserService.dart';
import 'package:provider/provider.dart';

BuildContext? _mainContext;

// The commands will use this to access the Provided models and services.
void init(BuildContext c) => _mainContext = c;

// Provide quick lookup methods for all the top-level models and services. Keeps the Command code slightly cleaner.
class BaseController {

  UserService userService = _mainContext!.read();
  ProductService productService = _mainContext!.read();
}