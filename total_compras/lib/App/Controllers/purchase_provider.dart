import 'package:total_compras/App/Models/purchase.dart';

abstract class PurchaseProvider {
  Future<void> sumTotal(Purchase purchase);
  Future<void> inc();
  Future<void> dec();
}
