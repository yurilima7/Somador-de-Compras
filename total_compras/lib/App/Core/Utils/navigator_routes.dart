import 'package:total_compras/App/Core/Utils/app_routes.dart';
import 'package:total_compras/App/total_purchases.dart';

class NavigatorRoutes {
  void homeScren() {
    navigatorKey.currentState!.pushNamedAndRemoveUntil(
      AppRoutes.home,
      (route) => false,
    );
  }
}
