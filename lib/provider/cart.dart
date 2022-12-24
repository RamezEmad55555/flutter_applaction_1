import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  int price = 0;

  add(Item product) {
    selectedProducts.add(product);
    price += product.price.round();

    notifyListeners();
  }

  delete(Item product) {
    selectedProducts.remove(product);
    price -= product.price;
    notifyListeners();
  }
}
