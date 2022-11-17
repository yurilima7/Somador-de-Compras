import 'package:flutter/material.dart';
import 'package:total_compras/App/Core/Styles/colors_styles.dart';

class IconForm extends StatelessWidget {
  final Function() action;
  final IconData icon;

  const IconForm({
    Key? key,
    required this.action,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: action,
        icon: Icon(
          icon,
          color: ColorsStyles.secundary,
      ),
    );
  }
}
