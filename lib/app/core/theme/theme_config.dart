import 'package:flutter/material.dart';

class ThemeConfig{
  ThemeConfig._();

  static final theme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  );
}