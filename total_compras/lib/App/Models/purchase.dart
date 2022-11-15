import 'package:flutter/material.dart';

class Purchase with ChangeNotifier {
  final String productName;
  final double price;
  final int quantity;
  final double productTotal;

  Purchase({
    required this.productName,
    required this.price,
    required this.quantity,
    required this.productTotal,
  });
}
