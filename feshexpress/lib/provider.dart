import 'package:flutter/material.dart';

class themeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme == ThemeMode.dark;

  set darkTheme(bool value) {
    _darkTheme = value;
    notifyListeners();
  }
}