import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/cart.dart';
import 'package:flutter_application_1/shared/appbar.dart';
import 'package:flutter_application_1/shared/colors.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) =>
      Consumer<Cart>(builder: (context, ClassInstance, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: appbarGreen,
            title: Text("Checkout screen"),
            actions: [ProductsAndPrice()],
          ),
          body: SizedBox(
            height: 300,
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: ClassInstance.selectedProducts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      subtitle: Text("TEST"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("PATH"),
                      ),
                    ),
                  );
                }),
          ),
        );
      });
}
