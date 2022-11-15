import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:total_compras/App/total_purchases.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const TotalPurchases());
}
