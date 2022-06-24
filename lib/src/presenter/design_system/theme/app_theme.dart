import 'package:flutter/material.dart';

abstract class AppTheme {
  static const _appBarTheme = AppBarTheme(centerTitle: true);

  static final ThemeData themeData = ThemeData(appBarTheme: _appBarTheme);
}
