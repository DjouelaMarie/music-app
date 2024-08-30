import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/themes/dark_mode.dart';
import 'package:flutter_application_1/pages/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMood => _themeData == darkMode;

  set themeData(ThemeData darkMode) {
    _themeData = themeData;

    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
