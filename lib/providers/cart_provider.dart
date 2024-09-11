import 'package:flutter/material.dart';

import '../models/product_model.dart';

class CartProvider with ChangeNotifier {
  List<Product> cartItems = [];
  
  //add products
  void addToCart(Product product) {
    cartItems.add(product);
    notifyListeners();
  }

  // remove products
  void removeFromCart(Product product) {
    cartItems.remove(product);
    notifyListeners();
  }
}
