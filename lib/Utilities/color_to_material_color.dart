import 'package:flutter/material.dart';
import 'dart:math' show min;

/// `VendrMaterialColor` is a simple solution to creation a `MaterialColor`
/// with 10 shades variants 50, 100, 200, ...900 use only one base color.
///
/// See also:
///
///  * [MaterialColor](https://api.flutter.dev/flutter/material/MaterialColor-class.html), which
///    defines a single color as well a color swatch with ten shades of the color..
class WawosMaterialColor extends MaterialColor {
  WawosMaterialColor(int primary)
      : super(primary, {
          050: _genColor(Color(primary), 0.05),
          100: _genColor(Color(primary), 0.2),
          200: _genColor(Color(primary), 0.4),
          300: _genColor(Color(primary), 0.6),
          400: _genColor(Color(primary), 0.8),
          500: _genColor(Color(primary), 1.0),
          600: _genColor(Color(primary), 1.2),
          700: _genColor(Color(primary), 1.4),
          800: _genColor(Color(primary), 1.6),
          900: _genColor(Color(primary), 1.8),
        });

  /// Construct a VendrMaterialColor from a String with hex color
  ///
  /// Hex color example "`ffc0ba77`""
  ///
  /// `ff` is alpha value.
  /// `c0` is a red value.
  /// `ba` is a green value.
  /// `77` is a blue value.
  factory WawosMaterialColor.fromHexString(String hexString) =>
      WawosMaterialColor(int.parse(hexString, radix: 16));

  /// Construct a VendrMaterialColor from the lower 8 bits of four integers.
  ///
  /// * `a` is the alpha value, with 0 being transparent and 255 being fully
  ///   opaque.
  /// * `r` is [red], from 0 to 255.
  /// * `g` is [green], from 0 to 255.
  /// * `b` is [blue], from 0 to 255.
  ///
  /// Out of range values are brought into range using modulo 255.
  factory WawosMaterialColor.fromARGB(int a, int r, int g, int b) =>
      WawosMaterialColor(
        (((a & 0xff) << 24) |
                ((r & 0xff) << 16) |
                ((g & 0xff) << 8) |
                ((b & 0xff) << 0)) &
            0xFFFFFFFF,
      );

  /// Create a VendrMaterialColor from red, green, blue, and opacity, similar to `rgba()` in CSS.
  ///
  /// * `r` is [red], from 0 to 255.
  /// * `g` is [green], from 0 to 255.
  /// * `b` is [blue], from 0 to 255.
  /// * `opacity` is alpha channel of this color as a double, with 0.0 being
  ///   transparent and 1.0 being fully opaque.
  ///
  /// Out of range values are brought into range using modulo 255.
  factory WawosMaterialColor.fromRGBO(int r, int g, int b, double opacity) =>
      WawosMaterialColor(
        ((((opacity * 0xff ~/ 1) & 0xff) << 24) |
                ((r & 0xff) << 16) |
                ((g & 0xff) << 8) |
                ((b & 0xff) << 0)) &
            0xFFFFFFFF,
      );

  factory WawosMaterialColor.fromColor(Color color) => WawosMaterialColor(
        color.value,
      );

  static Color _genColor(Color color, double shade) {
    var hue = HSVColor.fromColor(color);
    if (shade > 1.0) {
      return hue.withValue(min(1, (shade - 2).abs())).toColor();
    } else {
      return hue.withSaturation(shade).withValue(1).toColor();
    }
  }
}
