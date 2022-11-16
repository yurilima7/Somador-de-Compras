import 'package:flutter/material.dart';
import 'package:total_compras/App/Core/Styles/button_styles.dart';
import 'package:total_compras/App/Core/Styles/text_styles.dart';

class Button extends StatelessWidget {
  final Function() action;
  final String title;

  const Button({Key? key, required this.action, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => action(),
      style: context.buttonStyles.button,
      child: Text(
        title,
        style: context.textStyles.button,
      ),
    );
  }
}
