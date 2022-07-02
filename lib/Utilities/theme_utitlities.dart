import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

class ThemeUtilities {
  static void switchTheme(BuildContext context) {
    EasyDynamicTheme.of(context).changeTheme(
        dark: (EasyDynamicTheme.of(context).themeMode == ThemeMode.dark)
            ? false
            : true);
  }

  static ThemeMode getTheme(BuildContext context) {
    return EasyDynamicTheme.of(context).themeMode ?? ThemeMode.system;
  }

  static bool isDark(BuildContext context) {
    return EasyDynamicTheme.of(context).themeMode == ThemeMode.dark;
  }
}
