import 'package:flutter/material.dart';

enum AppThemes { OrangeTheme }

final appThemes = {
  AppThemes.OrangeTheme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.orange[700],
      accentColor: Colors.orange[700],
      iconTheme: IconThemeData(color: Colors.orange)),
};
