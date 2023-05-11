import 'package:flutter/material.dart';
import 'package:total_compras/App/Core/Styles/colors_styles.dart';
import 'package:total_compras/App/Core/Styles/text_styles.dart';

class ThemeSettings {
  ThemeSettings._();

  static final theme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: ColorsStyles.primary,
      secondary: ColorsStyles.secundary,
    ),

    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorsStyles.secundary,
      selectionHandleColor: ColorsStyles.secundary,
      selectionColor: ColorsStyles.secundary,
    ),

    cardTheme: CardTheme(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      color: ColorsStyles.secundary
    ),

    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      labelStyle: TextStyles.i.regular,

      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsStyles.secundary,
          width: 3.0,
        ),
        
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsStyles.secundary,
          width: 3.0,
        ),

        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsStyles.secundary,
          width: 3.0,
        ),
        
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: ColorsStyles.secundary,
      titleTextStyle: TextStyles.i.appBarTitle,
      centerTitle: true,
    ),
    
    scaffoldBackgroundColor: ColorsStyles.primary,
  );
}
