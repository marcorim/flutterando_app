
import 'package:flutter/material.dart';

class ThemeController with ChangeNotifier{
  ThemeMode themeMode = ThemeMode.dark;

  void changeThemeMode() {
     if (themeMode == ThemeMode.dark) {
        themeMode = ThemeMode.light;
      } else {
        themeMode = ThemeMode.dark;
      }

    notifyListeners();
  }

}
