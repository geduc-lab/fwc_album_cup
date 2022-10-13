import 'package:flutter/material.dart';

import '../ui/styles/colors_app.dart';
import '../ui/styles/text_styles.dart';

class ThemeConfig {
  // Avoid generate another intance
  ThemeConfig._();

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: BorderSide(color: ColorsApp.instance.greyDark, width: 1),
  );

  static final theme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyles.instance.textPrimaryFontBold.copyWith(
        color: Colors.black,
        fontSize: 18,
      ),
    ),
    primaryColor: ColorsApp.instance.primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.instance.primary,
      primary: ColorsApp.instance.primary,
      secondary: ColorsApp.instance.secundary,
    ),
    inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        isDense: true,
        contentPadding: const EdgeInsets.all(14),
        border: _defaultInputBorder,
        enabledBorder: _defaultInputBorder,
        focusedBorder: _defaultInputBorder,
        labelStyle: TextStyles.instance.labelTextField),
  );
}
