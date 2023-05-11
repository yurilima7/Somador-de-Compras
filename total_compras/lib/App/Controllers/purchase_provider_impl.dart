import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:total_compras/App/Controllers/purchase_provider.dart';
import 'package:total_compras/App/Models/purchase.dart';

class PurchaseProviderImpl with ChangeNotifier implements PurchaseProvider {
  final List<Purchase> _purchases = [];
  double _total = 0.0;
  int _quantity = 1;

  List<Purchase> get purchases => [..._purchases];
  double get total => _total;
  int get quantity => _quantity;
  int get purchasesLength => _purchases.length;

  @override
  Future<void> sumTotal(Purchase purchase) async {
    _total += purchase.productTotal;
    _purchases.insert(
      0,
      Purchase(
        productName: purchase.productName,
        price: purchase.price,
        quantity: purchase.quantity,
        productTotal: purchase.productTotal,
      ),
    );

    _quantity = 1;

    notifyListeners();
  }

  @override
  Future<void> dec() async {
    if (_quantity > 1) {
      _quantity -= 1;
    }
    notifyListeners();
  }

  @override
  Future<void> inc() async {
    _quantity += 1;
    notifyListeners();
  }

  @override
  Future<void> delete(int index, double value) async {
    try {
      _purchases.removeAt(index);
      _total -= value;
    } on Exception catch (e) {
      log(e.toString());
    }
    notifyListeners();
  }
}
