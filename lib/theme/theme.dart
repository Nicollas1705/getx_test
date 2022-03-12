import 'package:flutter/material.dart';

class MyTheme {
  static final redLight = ThemeData.light().copyWith(
    primaryColor: Colors.red,
    appBarTheme: const AppBarTheme(
      color: Colors.red,
    ),
  );

  static final redDark = ThemeData.dark().copyWith(
    primaryColor: Colors.red,
    appBarTheme: const AppBarTheme(
      color: Colors.red,
    ),
  );
}