import 'package:flutter/material.dart';
import 'package:total_compras/App/Core/Utils/navigator_routes.dart';
import 'package:total_compras/App/Core/Widgets/button.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 20.0,
          bottom: 10.0,
        ),

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
