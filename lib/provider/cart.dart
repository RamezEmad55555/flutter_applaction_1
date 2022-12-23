import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];

  add(Item product) {
    selectedProducts.add(product);
  }
}
