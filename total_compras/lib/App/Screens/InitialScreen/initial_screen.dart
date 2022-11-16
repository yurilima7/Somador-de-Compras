import 'package:flutter/material.dart';
import 'package:total_compras/App/Core/Utils/navigator_routes.dart';
import 'package:total_compras/App/Core/Widgets/button.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/icons/splash.png', fit: BoxFit.cover,),

            Button(
              action: () => NavigatorRoutes().homeScren(),
              title: 'Nova Compra',
            ),
          ],
        ),
      ),
    );
  }
}
