import 'package:flutter/material.dart';

class Breakpoints {
  static const int _kSmallScreenBreakpoint = 600;
  static const int _kMediumScreenBreakpoint = 900;
  // static const int _kLargeScreenBreakpoint = 1200;

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < _kSmallScreenBreakpoint;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < _kMediumScreenBreakpoint;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > _kMediumScreenBreakpoint;
  }

  static double map({
    required double s,
    required double m,
    required double l,
    required BuildContext context,
  }) {
    if (isSmallScreen(context)) {
      return s;
    } else if (isMediumScreen(context)) {
      return m;
    } else if (isLargeScreen(context)) {
      return l;
    }
    return m;
  }
}
