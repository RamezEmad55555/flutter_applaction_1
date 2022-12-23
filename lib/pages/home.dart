// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, sort_child_properties_last, unnecessary_import, must_be_immutable

import 'dart:ui';
import 'package:flutter_application_1/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/cart.dart';
import 'package:flutter_application_1/shared/colors.dart';
import 'package:flutter_application_1/pages/details_screen.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 33),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(product: items[index]),
                        ),
                      );
                    },
                    child: GridTile(
                      child: Stack(children: [
                        Positioned(
                          top: -3,
                          bottom: -9,
                          right: 0,
                          left: 0,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(55),
                              child: Image.asset(items[index].imgPath)),
                        ),
                      ]),
                      footer: GridTileBar(
                        trailing: Consumer<Cart>(
                            builder: (context, classInstance, child) {
                          return IconButton(
                              color: Color.fromARGB(255, 62, 94, 70),
                              onPressed: () {},
                              icon: Icon(Icons.add));
                        }),
                        leading: Text("\$ 14,000"),
                        title: Text(
                          "",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          drawer: Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/img/car.png"),
                            fit: BoxFit.cover),
                      ),
                      currentAccountPicture: CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage("assets/img/me.png")),
                      accountEmail: Text("Ramezemad@gmail.com"),
                      accountName: Text("Ramez Emad",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          )),
                    ),
                    ListTile(
                        title: Text("Home"),
                        leading: Icon(Icons.home),
                        onTap: () {}),
                    ListTile(
                        title: Text("My Products"),
                        leading: Icon(Icons.add_shopping_cart),
                        onTap: () {}),
                    ListTile(
                        title: Text("About"),
                        leading: Icon(Icons.help_center),
                        onTap: () {}),
                    ListTile(
                        title: Text("Logout"),
                        leading: Icon(Icons.exit_to_app),
                        onTap: () {}),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Text("Developed by Ramez Emad © 2023",
                      style: TextStyle(fontSize: 13)),
                )
              ],
            ),
          ),
          appBar: AppBar(actions: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                        child: Text(
                          "0",
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_shopping_cart),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "\$ 0",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ], backgroundColor: appbarGreen, title: Text("Home"))),
    );
  }
}
