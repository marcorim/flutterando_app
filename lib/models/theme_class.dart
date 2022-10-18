
import 'package:flutter/material.dart';

class TypeTheme{
  final ThemeMode theme;

  TypeTheme({required this.theme});

  factory TypeTheme.dark() {
    return TypeTheme(theme: ThemeMode.dark);
  }

  factory TypeTheme.light() {
    return TypeTheme(theme: ThemeMode.light);
  }
}