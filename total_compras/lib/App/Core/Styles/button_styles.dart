import 'package:flutter/material.dart';
import 'package:total_compras/App/Core/Styles/colors_styles.dart';

class ButtonStyles {
  static ButtonStyles? _instance;

  ButtonStyles._();

  static ButtonStyles get i {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get button => ElevatedButton.styleFrom(
    backgroundColor: ColorsStyles.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ).copyWith(
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.symmetric(vertical: 8.0), // Espaçamento vertical desejado
    ),
  );

  ButtonStyle get buttonHome => ElevatedButton.styleFrom(
    backgroundColor: ColorsStyles.secundary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ).copyWith(
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.symmetric(vertical: 8.0), // Espaçamento vertical desejado
    ),
  );
}

extension ButtonStylesExt on BuildContext {
  ButtonStyles get buttonStyles => ButtonStyles.i;
}