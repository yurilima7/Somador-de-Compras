import 'package:flutter/material.dart';

class ColorsStyles {
  static ColorsStyles? _instance;

  ColorsStyles._();

  static ColorsStyles get i {
    _instance ??= ColorsStyles._();
    return _instance!;
  }

  static Color primary = Colors.white;
  static Color secundary = const Color(0xFF5F14FE);
  static Color error = Colors.redAccent;
  static Color delete = Colors.red;
}

extension ColorsStylesExt on BuildContext {
  ColorsStyles get colorsStyles => ColorsStyles.i;
}
