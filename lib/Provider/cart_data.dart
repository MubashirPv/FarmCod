import 'package:flutter/material.dart';

import '../Models/product.dart';

class CartData extends ChangeNotifier {
  final List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  int get totalCost =>
      _cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));

  void addToCart(Product product) {
    final index = _cartItems.indexWhere((item) => item.id == product.id);
    if (index >= 0) {
      _cartItems[index].quantity++;
    } else {
      _cartItems.add(product);
    }
    notifyListeners();
  }

  void removeFromCart(int index) {
    final product = _cartItems[index];
    if (product.quantity > 1) {
      product.quantity--;
    } else {
      _cartItems.removeAt(index);
    }
    notifyListeners();
  }

  int getProductCount(Product product) {
    final index = _cartItems.indexWhere((item) => item.id == product.id);
    if (index >= 0) {
      return _cartItems[index].quantity;
    } else {
      return 0;
    }
  }
}
