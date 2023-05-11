import 'package:flutter/material.dart';
import 'package:total_compras/App/Core/Styles/colors_styles.dart';
import 'package:total_compras/App/Core/Utils/app_routes.dart';
import 'package:total_compras/App/Core/Widgets/button.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsStyles.secundary,
    
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset('assets/icons/splash.png'),
            ),
      
            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              
              child: Button(
                action: () => Navigator.of(context).pushNamedAndRemoveUntil(
                  AppRoutes.home,
                  (route) => false,
                ),
                title: 'Nova Compra',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
