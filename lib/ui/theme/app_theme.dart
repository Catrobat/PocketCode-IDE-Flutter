import 'package:flutter/material.dart';

import 'color_schemes.dart';
part 'colors.dart';

class AppTheme {
  static final ThemeData appTheme = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme, //ColorScheme.fromSwatch(primarySwatch:  AppColor.primarySwatchColor),
    );//Color(0xff002B3B)),
}