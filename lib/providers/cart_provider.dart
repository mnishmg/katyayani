import 'package:flutter/material.dart';

import '../models/product_model.dart';

class CartProvider with ChangeNotifier {
  Map<String, Product> cartItems = {};

  void addToCart(Product product) {
    cartItems[product.id] = product;
    notifyListeners();
  }

  void removeFromCart(String productId) {
    cartItems.remove(productId);
    notifyListeners();
  }
}
