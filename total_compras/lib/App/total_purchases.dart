import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:total_compras/App/Controllers/purchase_provider_impl.dart';
import 'package:total_compras/App/Core/Theme/theme_settings.dart';
import 'package:total_compras/App/Core/Utils/app_routes.dart';
import 'package:total_compras/App/Screens/home.dart';

GlobalKey <NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

class TotalPurchases extends StatelessWidget {
  const TotalPurchases({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PurchaseProviderImpl(),

      child: MaterialApp(
        navigatorKey: navigatorKey,
        scaffoldMessengerKey: scaffoldMessengerKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeSettings.theme,

        routes: {
          AppRoutes.home: (context) => const Home(),
        },
      ),
    );
  }
}
