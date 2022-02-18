import 'package:flutter/cupertino.dart';

// ignore: camel_case_types
class UIdata extends ChangeNotifier {
  List<String> _items = [
    "Stock",
    "Finance",
    "Gold",
    "Market",
    "Stock",
    "Finance"
  ];
  List<String> get items => _items;
}
