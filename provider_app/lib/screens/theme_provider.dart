import 'package:flutter/material.dart';

class ThemeScreen with ChangeNotifier {
  ThemeMode mode = ThemeMode.system;

  void switchtheme(ThemeMode value) {
    mode = value;
    notifyListeners();
  }
}
