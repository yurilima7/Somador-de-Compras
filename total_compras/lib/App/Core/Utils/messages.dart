import 'package:flutter/material.dart';
import 'package:total_compras/App/Core/Styles/colors_styles.dart';
import 'package:total_compras/App/Core/Styles/text_styles.dart';
import 'package:total_compras/App/total_purchases.dart';

class Messages {
  static void showError(String text) {
    scaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        backgroundColor: ColorsStyles.error,
        content: Text(
          text,
          style: scaffoldMessengerKey.currentContext!.textStyles.message,
        ),
      ),
    );
  }
}
