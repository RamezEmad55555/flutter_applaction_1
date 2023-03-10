// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, sort_child_properties_last

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
          body: Column(
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  height: 600,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: ClassInstance.selectedProducts.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: ListTile(
                            title: Text(
                                ClassInstance.selectedProducts[index].name),
                            subtitle: Text(
                                "${ClassInstance.selectedProducts[index].price} - {Main Branch}"),
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(ClassInstance
                                  .selectedProducts[index].imgPath),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  ClassInstance.delete(
                                      ClassInstance.selectedProducts[index]);
                                },
                                icon: Icon(Icons.remove)),
                          ),
                        );
                      }),
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Pay \$${ClassInstance.price}",
                    style: TextStyle(fontSize: 19),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(BTNpink),
                      padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))))),
            ],
          ),
        );
      });
}
