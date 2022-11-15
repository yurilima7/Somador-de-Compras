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
    elevation: 5,
    backgroundColor: ColorsStyles.secundary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    
    minimumSize: const Size.fromHeight(50),
  );
}

extension ButtonStylesExt on BuildContext {
  ButtonStyles get buttonStyles => ButtonStyles.i;
}