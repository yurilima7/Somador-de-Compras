import 'package:flutter/material.dart';

class ColorsStyles {
  static ColorsStyles? _instance;

  ColorsStyles._();

  static ColorsStyles get i {
    _instance ??= ColorsStyles._();
    return _instance!;
  }

  static Color primary = Colors.white;
  static Color secundary = const Color(0xFF1D1840);
  static Color error = Colors.redAccent;
  static Color delete = const Color(0xFF4E0F0F);
}

extension ColorsStylesExt on BuildContext {
  ColorsStyles get colorsStyles => ColorsStyles.i;
}
