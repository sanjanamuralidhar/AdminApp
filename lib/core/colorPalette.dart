import 'dart:math';
import 'package:flutter/material.dart';

class Palette {
  static const Color PRIMARY = Color(0xFF4C8492);
  static const Color SECONDARY = Color(0xFFF09C67);
  static const Color SECONDARYDARK = Color(0xFF005689);
  static const Color ACCENT = Color(0xFFFFC836);
  static const Color DARK = Color(0xFF20373D);
  static const Color LIGHT = Color(0xFFFFFDE8);

  static const Color SUCCESS = Color(0xFF4CAF50);
  static const Color WARNING = Color(0xFF1275AC);
  static const Color DANGER = Color(0xFFF44336);

  static Color hexToColor({@required String code}) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);
