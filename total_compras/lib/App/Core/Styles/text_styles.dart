import 'package:flutter/material.dart';
import 'package:total_compras/App/Core/Styles/colors_styles.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get i {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get primaryFont => 'Roboto';

  TextStyle get primaryRegular => TextStyle(
    fontFamily: primaryFont,
    fontWeight: FontWeight.w400,
  );

  TextStyle get appBarTitle => primaryRegular.copyWith(
    color: ColorsStyles.primary,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  TextStyle get main => primaryRegular.copyWith(
    color:  ColorsStyles.secundary,
    fontSize: 20,
  );

  TextStyle get button => primaryRegular.copyWith(
    color:  ColorsStyles.secundary,
    fontSize: 20,
  );

  TextStyle get message => primaryRegular.copyWith(
    color:  ColorsStyles.secundary,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  TextStyle get nullList => primaryRegular.copyWith(
    color:  ColorsStyles.secundary,
    fontSize: 16,
  );

  TextStyle get regular => primaryRegular.copyWith(
    color: ColorsStyles.secundary,
    fontSize: 14,
  );

  TextStyle get productTotal => primaryRegular.copyWith(
    color: ColorsStyles.secundary,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}

extension TextStylesExt on BuildContext {
  TextStyles get textStyles => TextStyles.i;
}
