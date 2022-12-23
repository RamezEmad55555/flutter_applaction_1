// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/checkout.dart';
import 'package:flutter_application_1/provider/cart.dart';
import 'package:provider/provider.dart';

class ProductsAndPrice extends StatelessWidget {
  const ProductsAndPrice({super.key});

  @override
  Widget build(BuildContext context) =>
      Consumer<Cart>(builder: (context, ClassInstance, child) {
        return Row(
          children: [
            Stack(
              children: [
                Container(
                    child: Text(
                      "${ClassInstance.selectedProducts.length}",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(211, 164, 255, 193),
                        shape: BoxShape.circle)),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckOut(),
                      ),
                    );
                  },
                  icon: Icon(Icons.add_shopping_cart),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "\$ ${ClassInstance.price}",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        );
      });
}
