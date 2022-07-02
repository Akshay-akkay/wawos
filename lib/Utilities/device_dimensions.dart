import 'package:flutter/material.dart';

import '../Data/Enums/enums.dart';

abstract class MockupValues {
  static const double mockupWidth = 375;
  static const double mockupHeight = 667;
}

class DeviceDimensions {
  DeviceDimensions._();
  static late BuildContext? context;

  /// Init method for the device dimensions class, to be wrapped around the
  /// [MaterialApp] widget.
  ///
  /// We require this [init] method in order to get [context] from the [MaterialApp]
  /// instead of passing it as a parameter.
  ///
  /// We require the [context] parameter to be passed in, as it is required to
  /// calculate the device dimensions.
  static void init({required BuildContext ctx}) {
    context = ctx;
  }

  static double width() {
    return MediaQuery.of(context!).size.shortestSide;
  }

  static double height() {
    return MediaQuery.of(context!).size.height;
  }

  static ScreenSize getSize(BuildContext context) {
    double deviceWidth = DeviceDimensions.width();
    if (deviceWidth > 900) return ScreenSize.extraLarge;
    if (deviceWidth > 600) return ScreenSize.large;
    if (deviceWidth > 300) return ScreenSize.normal;
    return ScreenSize.small;
  }
}

class CreateScaleValues {
  CreateScaleValues._();
  static double _widthScaleFactor() {
    double widthScaleFactor =
        DeviceDimensions.width() / MockupValues.mockupWidth;
    return widthScaleFactor;
  }

  static double _heightScaleFactor() {
    double heightScaleFactor =
        DeviceDimensions.height() / MockupValues.mockupHeight;
    return heightScaleFactor;
  }

  static double fontScaleFactor() {
    double fontScaleFactor =
        DeviceDimensions.width() / MockupValues.mockupWidth;
    return fontScaleFactor;
  }

  static double getScaledWidth({
    required double? mockUpValue,
  }) {
    double width = mockUpValue! * _widthScaleFactor();
    return width;
  }

  static double getScaledHeight({
    required double? mockUpValue,
  }) {
    double height = mockUpValue! * _heightScaleFactor();
    return height;
  }

  static double getScaledFontSize({
    required double? mockUpValue,
  }) {
    double fontSize = mockUpValue! * fontScaleFactor();
    return fontSize;
  }
}

/// Wrapper for [CreateScaleValues] to make it easier to use.
///
/// This an extension on num variable, to be used to convert a number to a
/// scaled value, according to the device dimensions.
extension SizeExtension on num {
  double get w => CreateScaleValues.getScaledWidth(
        mockUpValue: toDouble(),
      );

  double get h => CreateScaleValues.getScaledHeight(
        mockUpValue: toDouble(),
      );

  double get fs => CreateScaleValues.getScaledFontSize(
        mockUpValue: toDouble(),
      );
}
